# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.storage = :file
  config.root = Rails.root.join('public/uploads')
end
