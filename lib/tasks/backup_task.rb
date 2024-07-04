# /lib/tasks/backup_task.rb

def backup_database
  timestamp = Time.now.strftime("%Y%m%d_%H%M%S")
  backup_directory = "db/backup"
  filename = "#{backup_directory}/database_backup_#{timestamp}.sql"

  
  # Remplacez 'user' et 'cvtheque_api_development' par votre utilisateur et nom de base de données réels
  command = "pg_dump -U user -d cvtheque_api_development > #{filename}"
  puts "Running command: #{command}"
  system(command)
  if $?.exitstatus == 0
    puts "Backup created successfully at #{timestamp}"
  else
    puts "Error creating backup at #{timestamp}"
  end
end

