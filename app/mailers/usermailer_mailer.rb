class UsermailerMailer < ApplicationMailer
    def welcome_email
        @user = params[:user]
        mail(to: @user.email, subject:'Email de connection sur le Cvthèque Activ Solution')
    end

    def expiry_email
        @user = params[:user]
        mail(to: @user.email, subject:'Expiration de compte sur le CVthèque Activ Solution Océan Indien')
    end

    def motDo_email
        @user = params[:user]
        mail(to: @user.email, subject:'Votre mot de passe sur la CVthèque Activ Solution Ocèan Indien')
    end
end
