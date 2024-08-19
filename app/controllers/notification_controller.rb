class NotificationController < ApplicationController
    def emailNotification
        @email = params[:email]
        @bjet = params[:objet]
        @contenu = params[:contenu]        
    end

    def SMSNotification

    end

    def socialNet

    end

    def daily_notification(user)
        @user = user
        mail(to: 'anjara.dev24@gmail.com', subject: 'CVthèque Notification')
    end

    def send_email
        user_email = params[:user_email]
        subject = params[:user_objet]
        message = params[:message]
    
        # Envoi de l'email
        NotificationMailer.with(user_email: user_email, subject: subject, message: message).notify_user.deliver_now
    
        # Renvoyer une réponse JSON
        render json: { message: 'Email envoyé avec succès!' }, status: :ok
      rescue => e
        render json: { error: e.message }, status: :unprocessable_entity
    end
end
