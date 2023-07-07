class AddFavoriteMailer < ApplicationMailer
    def user_favorite
        @favori = params[:add_favoris]
        @admin = params[:admini]
        @user = User.find_by(id: @favori.user_id)
        @cv = Cv.find_by(id: @favori.cv_id)

        mail(to: "#{@admin.email}", 
        subject:"Bonjour, #{@user.name} à ajouter #{@cv.nomPrenom} dans ses listes des favoris")
    end
end
