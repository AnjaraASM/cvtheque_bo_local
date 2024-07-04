require 'pdf-reader'
require 'shellwords'

# Dossier contenant les CV
cv_directory = '/home/user/cvtheque/public/uploads/cv/resume'

# Charger l'environnement Rails
require_relative '../../config/environment'

# Fonction pour vérifier et réparer les fichiers PDF
def verify_and_repair_pdf(file_path)
  repaired_file_path = file_path + ".repaired"
  system("pdftk #{Shellwords.escape(file_path)} output #{Shellwords.escape(repaired_file_path)} 2>/dev/null")

  if File.exist?(repaired_file_path)
    puts "Fichier réparé : #{repaired_file_path}"
    return repaired_file_path
  else
    puts "Aucune réparation nécessaire : #{file_path}"
    return file_path
  end
end

# Fonction pour extraire les informations du PDF
def extract_info_from_pdf(file_path)
  unless File.file?(file_path) && File.extname(file_path).downcase == '.pdf'
    puts "Fichier non valide ou extension incorrecte : #{file_path}"
    return nil
  end

  # Réparer le fichier PDF avant de l'ouvrir
  file_path = verify_and_repair_pdf(file_path)
  puts "Traitement du fichier : #{file_path}"

  reader = nil
  begin
    reader = PDF::Reader.new(file_path)
  rescue PDF::Reader::MalformedPDFError => e
    puts "Erreur de PDF mal formé pour le fichier #{file_path}: #{e.message}"
    return nil
  rescue PDF::Reader::UnsupportedFeatureError => e
    puts "Erreur de fonctionnalité non supportée pour le fichier #{file_path}: #{e.message}"
    return nil
  rescue PDF::Reader::EncryptedPDFError => e
    puts "Erreur de PDF chiffré pour le fichier #{file_path}: #{e.message}"
    return nil
  rescue StandardError => e
    puts "Erreur lors de la lecture du fichier #{file_path}: #{e.message}"
    return nil
  end

  text = reader.pages.map(&:text).join("\n")

  # Utilisez des expressions régulières pour extraire les informations
  info = {}

  # Utiliser une approche simplifiée pour extraire les informations de base
  info[:nomPrenom] = text[/\b[A-Z][a-z]+ [A-Z][a-z]+\b/] || "Inconnu"
  info[:email] = text[/\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b/i]

  # Expression régulière pour trouver les numéros de téléphone
  phone_regex = /\b(?:\+261|034|032|038)?[-\s]?(\d{2,3})?[-\s]?(\d{2,4})?[-\s]?(\d{3,4})[-\s]?(\d{2,4})\b/
  info[:telephone] = text[phone_regex]

  info[:adresse] = text[/LOT\s+(.*?)\s*\/\s*/i, 1]&.split(' ')&.slice(0, 4)&.join(' ') || "Inconnue"
  info[:linkedin] = text[%r{https://www\.linkedin\.com/in/[^\s]+}]
  info[:facebook] = text[%r{https://www\.facebook\.com/[^\s]+}]
  info[:descriptionProfile] = text[/(Enthousiaste, créative et passionnée.*?)\n\n/m, 1]

  # Définir la nationalité
  if text.match?(/Malgache|Malagasy/i)
    info[:nationalite] = "Madagascar"
  else
    info[:nationalite] = "Autre résident"
  end

  info[:age] = "Non spécifié"
  info[:aExperience] = "1 an" # Adaptez en fonction de votre logique
  info[:pretention] = "Non spécifiée"
  info[:status] = false
  info[:contrat] = "CDI"

  # Définir la localisation du candidat
  if text.match?(/Malgache|Malagasy/i)
    info[:national] = "Malgache"
  else
    info[:national] = "Autre nationalité"
  end

  # Extraire les expériences
  info[:experiences] = extract_experience_from_text(reader.pages)

  # Extraire les diplômes
  info[:diplomes] = extract_diplome_from_text(reader.pages)

  info
end

def clean_text(text)
  text.gsub(/[^a-zA-Z0-9\s]/, '').strip
end

# Fonction pour extraire les expériences du texte
def extract_experience_from_text(pages)
  experiences = []
  keyword_found = false

  pages.each do |page|
    page.text.split.each_with_index do |word, index|
      if %w[expérience professionnelles expériences EXPÉRIENCE PROFFESSIONNELLES EXPÉRIENCES].include?(word.downcase)
        keyword_found = true
        next
      else
        puts "======================================== ** ==================================="
      end

      next unless keyword_found

      # Rechercher les dates dans le texte
      if word.match?(/\d{2}\/\d{2}\/\d{4}/)
        date_match = word.match(/(?<datexp>\d{2}\/\d{2}\/\d{4})\s*-\s*(?<datefin>\d{2}\/\d{2}\/\d{4})?/)
        next unless date_match

        descriptionexp = []
        page.text.split[(index + 1)..].each do |desc_word|
          break if desc_word.match?(/\d{2}\/\d{2}\/\d{4}/)
          descriptionexp << desc_word
        end

        experiences << {
          datexp: date_match[:datexp],
          datefin: date_match[:datefin],
          descriptionexp: descriptionexp.join(' ')
        }

        keyword_found = false
      end
    end
  end

  experiences
end

# Fonction pour extraire les diplômes du texte
def extract_diplome_from_text(pages)
  diplomes = []
  keyword_found = false

  pages.each do |page|
    clean_page_text = clean_text(page.text)
    puts "Clean Page text: #{clean_page_text}"  # Affichez le texte nettoyé de la page pour le débogage
    clean_page_text.split.each_with_index do |word, index|
      # Affichez chaque mot pour le débogage
      puts "Current word: #{word}"

      # Vérifiez si le mot correspond à l'un des mots-clés
      if %w[formations diplomes etudes FORMATIONS DIPLÔMES DIPLÔME ETUDES ÉTUDES].include?(word.downcase)
        keyword_found = true
        puts "Keyword found: #{word.downcase}"
        next
      else
        puts "=================== * ==========================="
      end

      next unless keyword_found

      # Rechercher les dates dans le texte
      if word.match?(/\d{2}\/\d{2}\/\d{4}/)
        date_match = word.match(/(?<datefinecole>\d{2}\/\d{2}\/\d{4})\s*-\s*(?<datecole>\d{2}\/\d{2}\/\d{4})?/)
        next unless date_match

        description = []
        clean_page_text.split[(index + 1)..].each do |desc_word|
          break if desc_word.match?(/\d{2}\/\d{2}\/\d{4}/)
          description << desc_word
        end

        diplomes << {
          datefinecole: date_match[:datefinecole],
          datecole: date_match[:datecole],
          descriptionecole: description.join(' ')
        }

        keyword_found = false
      end
    end
  end

  diplomes
end

# Fonction récursive pour traiter les fichiers dans les sous-dossiers
def process_directory(directory)
  Dir.foreach(directory) do |filename|
    next if filename == '.' || filename == '..'

    file_path = File.join(directory, filename)

    if File.directory?(file_path)
      process_directory(file_path)
    elsif File.file?(file_path) && File.extname(filename).downcase == '.pdf'
      begin
        info = extract_info_from_pdf(file_path)
        next if info.nil?

        # Créez un nouvel enregistrement Cv avec les informations extraites
        cv = Cv.new(
          nomPrenom: info[:nomPrenom],
          email: info[:email],
          telephone: info[:telephone],
          adresse: info[:adresse],
          facebook: info[:facebook],
          linkedin: info[:linkedin],
          aExperience: info[:aExperience],
          nationalite: info[:nationalite],
          descriptionProfile: info[:descriptionProfile],
          contrat: info[:contrat],
          national: info[:national],
          pretention: info[:pretention],
          status: info[:status]
        )

        if cv.save
          puts "CV créé avec succès : #{cv.nomPrenom}"

          # Associer les expériences au CV
          info[:experiences].each do |exp|
            experience = Experiences.new(
              societe: exp[:societe],
              datexp: exp[:datexp],
              datefin: exp[:datefin],
              descriptionexp: exp[:descriptionexp],
              cv_id: cv.id
            )

            unless experience.valid?
              puts "Erreur de validation lors de la création de l'expérience : #{experience.errors.full_messages.join(', ')}"
              next  # Passe à l'itération suivante si la validation échoue
            end
            
            if experience.save
              puts "Expérience ajoutée avec succès !"
            else
              puts "Erreur lors de l'enregistrement de l'expérience : #{experience.errors.full_messages.join(', ')}"
            end
          end

          # Associer les diplômes au CV
          info[:diplomes].each do |dip|
            diplome = Diplome.new(
              ecole: dip[:ecole],
              datecole: dip[:datecole],
              datefinecole: dip[:datefinecole],
              descriptionecole: dip[:descriptionecole],
              cv_id: cv.id
            )
            if diplome.save
              puts "Diplôme ajouté avec succès !"
            else
              puts "Erreur lors de l'enregistrement du diplôme : #{diplome.errors.full_messages.join(', ')}"
            end
          end
        else
          puts "Erreur lors de l'insertion du CV dans la base de données : #{cv.errors.full_messages.join(', ')}"
        end

      rescue => e
        puts "Erreur lors du traitement du fichier #{filename}: #{e.message}"
      end
    end
  end
end

# Démarrer le traitement des CV
process_directory(cv_directory)

puts "Traitement des CV terminé."
