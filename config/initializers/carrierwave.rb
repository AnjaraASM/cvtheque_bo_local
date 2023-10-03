# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  #config.storage = :file
  #config.root = Rails.public_path
  #config.asset_host = '*'
  #config.public = true

   config.storage = :file
   config.root = Rails.public_path
   config.enable_processing = false
  
end
