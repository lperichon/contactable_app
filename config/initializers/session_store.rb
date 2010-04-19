# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_test_contactable_session',
  :secret      => '98a5455bf76eddf7bb9ea2b9bbaa4e8398e094eb8ef8767b6491d048b5b8311f7390fe6784288ed088523915295aab54f607dd944d2c61b74f5dc3dcfcaaf6f0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
