# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#TwitterStyleApp::Application.config.secret_key_base = '4c46eded6a337f2493516f8bc2291da6bb1ecd1eec69b5e43ba2d6de11e8cf8c3e1c492f5f76be3ace04a280269d321de1be964a0b4e464bb691969480670e80'
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

TwitterStyleApp::Application.config.secret_key_base = secure_token
