class  userDemandEntretienNotif.rb < ApplicationMailer

	def notif_demande
		@entretien = params[:demande_entretien]
		@user = User.find_by(id: @entretien.user_id)
		@cv = Cv.find_by(id: @entretien.cv_id)
		mail(to: "#{@user.email}", subjet:"Demande d\'entretien"
	end
end
	
