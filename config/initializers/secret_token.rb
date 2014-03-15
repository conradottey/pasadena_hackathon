# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Traffic::Application.config.secret_key_base = '4da69c519cbff7ededa85cc52ff3a35ee2c9ae155c43a7104e7c39bdd172146965ae5f72e1e1a1a37f332d8375eeea6361126c65018510dcaf258978d40aafa3'
