# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  #config.storage = :
  config.root = Rails.public_path
  #config.asset_host = '*'
  #config.public = true

  config.storage = :file
  
   
end
