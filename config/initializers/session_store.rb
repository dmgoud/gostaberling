# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gostaberling_session',
  :secret      => '9407519579ebacf9283ce7f8c7015832ce5f44609609fac7c5b68dd8f8068bb63d252f77a6eefda1ba3c50d6864a110cf6f299d3535d78939dec36399dfa34f6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
