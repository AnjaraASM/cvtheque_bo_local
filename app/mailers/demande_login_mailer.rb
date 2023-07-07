class DemandeLoginMailer < ApplicationMailer
    def demande_login
        @demande = params[:demand_login]
        @admin = params[:admini]

        mail(to: "#{@admin.email}", 
        subject:'Demande de login sur la CVthèque Activ Solution Océan Indien')
    end
end
