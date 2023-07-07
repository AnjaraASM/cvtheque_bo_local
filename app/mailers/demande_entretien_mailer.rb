class DemandeEntretienMailer < ApplicationMailer
    def demande_entretien
        @entretien = params[:demand_entretien]
        @admin = params[:admini]
        @user = User.find_by(id: @entretien.user_id)
        @cv = Cv.find_by(id: @entretien.cv_id)
        mail(to: "#{@admin.email}", 
        subject:'Demande d\'entretien Activ Solution Océan Indien')
    end
end
