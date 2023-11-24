class User < ApplicationRecord
    require 'rufus-scheduler'

    scheduler = Rufus::Scheduler.new
    #configuration de la tache cron

    scheduler.every '1d' do
	# Obtenez la liste des utilisateurs dont le compte expire dans les 3 prochains jours
  	users = User.where("expire <= ?", 3.days.from_now)
	
  	# Envoyez un email à chaque utilisateur
 	users.each do |usr|
	   #puts "============================================#{usr.name}=========================================================================="
    	   UsermailerMailer.with(user: usr).expiry_email.deliver_now
  	end
    end

    validate :account_not_expired

    acts_as_token_authenticatable
    has_secure_password
    has_many :favorites, dependent: :destroy
    has_many :entretiens, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :user_categorie_cv, dependent: :destroy
    has_many :views
    has_many :profil_ideals

    def account_not_expired
        if expire.present? && expire < Time.now
            errors.add(:base, "Oops, Votre compte est expirer !")
        end
    end

    def self.send_expiry_email
        expires_soon = where('expire < ?', 8.day.from_now)
        expires_soon.each do |user|
            UserMailer.expiry_email(user).deliver_now
        end
    end
end
