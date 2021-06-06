Knock.setup do |config|
    config.token_audience = -> { Rails.application.credentials.auth0_client_id }
    # DO NOT USE THE DEFAULT CONFIG 
    # config.token_secret_signature_key = -> { JWT.base64url_decode Rails.application.secrets.auth0_client_secret }
    # USE THIS INSTEAD
    config.token_secret_signature_key = -> { Rails.application.credentials.auth0_client_secret }
end
