# /home/user/cvtheque/app/mailers/user_demandEntretien_notif.rb

class UserDemandEntretienNotif < ApplicationMailer
  def notif_demande
    @entretien = params[:demande_entretien]
    @user = User.find_by(id: @entretien.user_id)
    @cv = Cv.find_by(id: @entretien.cv_id)
    mail(to: @user.email, subject: "Demande d'entretien")
  end
end
