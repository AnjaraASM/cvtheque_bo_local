# config/initializers/faraday.rb
Faraday.default_connection = Faraday.new do |faraday|
  faraday.ssl[:verify] = false
  faraday.adapter Faraday.default_adapter
end
