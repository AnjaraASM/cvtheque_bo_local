class User < ApplicationRecord
    validate :account_not_expired

    acts_as_token_authenticatable
    has_secure_password
    has_many :favorites, dependent: :destroy
    has_many :entretiens, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :user_categorie_cv, dependent: :destroy
    has_many :views

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
