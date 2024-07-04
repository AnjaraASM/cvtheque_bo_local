# /config/scheduler.rb

require 'rufus-scheduler'
require Rails.root.join('lib', 'tasks', 'backup_task')

scheduler = Rufus::Scheduler.singleton

scheduler.every '1d' do
  backup_database
end

