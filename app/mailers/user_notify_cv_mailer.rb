class UserNotifyCvMailer < ApplicationMailer
    def user_new_cv_publish
        @user = params[:user]
        @cate = params[:cat]
        @cv = params[:cv]
        mail(to: "#{@user.email}", 
        subject:"Un nouveau profil de #{@cate.categorie} qui peut vous interssé dans notre CVthèque")
    end
end
