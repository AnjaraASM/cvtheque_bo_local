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
end
