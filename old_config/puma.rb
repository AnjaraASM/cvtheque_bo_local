# Puma configuration file

# Binding with SSL
bind 'ssl://212.83.181.22:33066?cert=%2Fhome%2Fuser%2Fcvtheque%2Fserver.crt&key=%2Fhome%2Fuser%2Fcvtheque%2Fserver.key&verify_mode=none'

# Thread configuration
# Adjust the minimum and maximum threads to suit your application's load.
# For development, a lower range is often sufficient. For production, you might need to increase this.
max_threads_count = ENV.fetch("RAILS_MAX_THREADS", 5).to_i
min_threads_count = ENV.fetch("RAILS_MIN_THREADS", max_threads_count).to_i
threads min_threads_count, max_threads_count

# Worker timeout for development
worker_timeout 3600 if ENV.fetch("RAILS_ENV", "development") == "development"

# Port configuration
# Use environment variables for dynamic port allocation.
port ENV.fetch("PORT", 33066).to_i

# Environment
# Ensure that the correct environment is set for Puma.
environment ENV.fetch("RAILS_ENV", "development")

# PID file
pidfile ENV.fetch("PIDFILE", "tmp/pids/server.pid")

# Number of workers
# Uncomment and adjust if using workers. Increase the number of workers based on your server's CPU cores.
# workers ENV.fetch("WEB_CONCURRENCY", 2).to_i

# Preload application
# Uncomment if using workers to preload the application and improve performance.
# preload_app!

# Allow Puma to be restarted by `bin/rails restart`
plugin :tmp_restart