require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Reload application code on each request for development.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable server timing for performance monitoring.
  config.server_timing = true

  # Enable/disable caching. Run rails dev:cache to toggle caching.
  if Rails.root.join("tmp/caching-dev.txt").exist?
    config.action_controller.perform_caching = true
    config.cache_store = :memory_store
    config.public_file_server.headers = {
      "Cache-Control" => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end

  # Configure Active Storage to use the local file system.
  config.active_storage.service = :local

  # Raise errors if the mailer can't send emails.
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_deliveries = true

  # Configure the mailer with SMTP settings.
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:              'smtp.office365.com',
    port:                 587,
    domain:               'activsolution.fr',
    user_name:            'contact@activsolution.fr',
    password:             'Zion1980**', # Ensure this is secure
    authentication:       'login', # Changez de 'plain' à 'login
    enable_starttls_auto: true,      # STARTTLS est activé automatiquement
    openssl_verify_mode:  'none'
    # open_timeout:         10,  # Ajustez ces valeurs en fonction de vos besoins
    # read_timeout:         10   # Ajustez ces valeurs en fonction de vos besoins
  }

  # Set default URL options for the mailer.
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000, protocol: 'http' }

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise exceptions for disallowed deprecations.
  config.active_support.disallowed_deprecation = :raise

  # List of deprecation messages to disallow.
  config.active_support.disallowed_deprecation_warnings = []

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Configure trusted IP addresses or hostnames.
  config.hosts << "cvtheque.activsolution.fr:33066"

  # Force SSL if the environment variable SSL is set to "true".
  config.force_ssl = ENV.fetch('SSL', 'false') == 'true'

  # Ignore HTTPS errors in development (optional).
  # config.disable_ssl_parser = true
end
