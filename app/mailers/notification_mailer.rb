class NotificationMailer < ApplicationMailer
    def notify_user
      @message = params[:message]
      mail(to: params[:user_email], subject: params[:subject])
    end
  end
