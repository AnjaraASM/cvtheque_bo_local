# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever


#Email d'expiration de compte utilisateur

every :day, at: '12:00' do
  # Obtenez la liste des utilisateurs dont le compte expire dans les 3 prochains jours
  users = User.where("expire <= ?", 3.days.from_now)

  # Envoyez un email à chaque utilisateur
  users.each do |user|
    UserMailer.expiry_email(user: user).deliver_later
  end
end
