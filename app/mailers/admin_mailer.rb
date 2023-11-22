class AdminMailer < ApplicationMailer

	def new_add_cv
		mail(to: 'devasm2022@gmail.com', subject: 'Nouveau CV sur la CVtheque')
	end

end
