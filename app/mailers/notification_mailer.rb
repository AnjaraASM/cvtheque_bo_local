class NotificationMailer < ApplicationMailer
    def notify_user
      @message = params[:message]
      mail(to: params[:user_email], subject: params[:subject])
    end

    def notify_ajoutcv
      @user_email = params[:user_email]
      @subject = params[:subject] || 'Ajout de CV confirmé'
  
      mail(to: @user_email, subject: @subject) do |format|
        format.html { render 'notification_mailer/notify_ajoutcv' }
        format.text { render plain: 'notification_mailer/notify_ajoutcv' }
      end
    end
  end
