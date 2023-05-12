class UsermailerMailer < ApplicationMailer

    def welcome_email
        @user = params[:user]
        mail(to: @user.email, subject:'Email de connection sur le Cvthèque Activ Solution')
    end

end
