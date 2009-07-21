# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nested-attributes-example_session',
  :secret      => '82ac06862907a98305107ca579276678ae8163453375b60aa2afb12c5497937466f97f74e4feeee6b9589cf9d45108d565a180cd602bf1fe69aa64b833e8e92a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
