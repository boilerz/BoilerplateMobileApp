require 'spaceship'

def connect_spaceship_api()
  return unless not Spaceship::ConnectAPI.token

  Spaceship::ConnectAPI.token = Spaceship::ConnectAPI::Token.create(
    issuer_id: ENV['SPACESHIP_CONNECT_API_ISSUER_ID'],
    key_id: ENV['SPACESHIP_CONNECT_API_KEY_ID'],
    key: ENV['SPACESHIP_CONNECT_API_KEY']
  )
end

def create_app_identifier(identifier:, description:)
  connect_spaceship_api()
  return unless not Spaceship::ConnectAPI::BundleId.find(identifier)

  Spaceship::ConnectAPI::BundleId.create(name: description, identifier: identifier)
end
