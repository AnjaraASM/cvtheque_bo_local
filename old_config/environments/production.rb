require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Code is not reloaded between requests (in production, this is set to true).
  config.cache_classes = true

  # Eager load code on boot to improve performance.
  config.eager_load = true

  # Secret key base for verifying the integrity of signed cookies.
  config.secret_key_base = ENV["SECRET_KEY_BASE"]

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local = false

  # Ignore SSL parsing errors.
  config.disable_ssl_parser = true

  # Ensure a master key is available for decrypting credentials.
  config.require_master_key = true

  # Enable serving static files from the `/public` folder.
  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?

  # Store uploaded files on the local file system (see config/storage.yml for options).
  config.active_storage.service = :local

  # Mount Action Cable outside the main process or domain.
  # Uncomment and configure if using Action Cable.
  # config.action_cable.mount_path = nil
  # config.action_cable.url = "wss://example.com/cable"
  # config.action_cable.allowed_request_origins = [ "http://example.com" ]

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  config.force_ssl = true if ENV.fetch('SSL', 'false') == 'true'

  # Set the logging level to :info to include generic information about system operation.
  config.log_level = :info

  # Prepend all log lines with the following tags.
  config.log_tags = [ :request_id ]

  # Use a real cache store in production (e.g., mem_cache_store).
  # config.cache_store = :mem_cache_store

  # Use a real queuing backend for Active Job.
  # Uncomment and configure if using Active Job.
  # config.active_job.queue_adapter     = :resque
  # config.active_job.queue_name_prefix = "cvtheque_api_production"

  # Action Mailer configuration.
  config.action_mailer.perform_caching = false
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_deliveries = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:              'smtp.office365.com',
    port:                 587,
    domain:               'activsolution.fr',
    user_name:            'contact@activsolution.fr',
    password:             'Zion1980**',
    authentication:       'login',
    enable_starttls_auto: true,
  }
  config.action_mailer.default_url_options = { host: 'cvtheque.activsolution.fr' }

  # Enable locale fallbacks for I18n.
  config.i18n.fallbacks = true

  # Don't log any deprecations.
  config.active_support.report_deprecations = false

  # Use default logging formatter.
  config.log_formatter = ::Logger::Formatter.new

  # Use STDOUT for logging if ENV["RAILS_LOG_TO_STDOUT"] is present.
  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  # Do not dump schema after migrations.
  # config.active_record.dump_schema_after_migration = false

  # Configure allowed hosts.
  config.hosts << "cvtheque.activsolution.fr"
end
