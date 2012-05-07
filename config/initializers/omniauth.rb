Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'qYadffICbJt5jZCDHzEe1Q', 'JcOpmv2bb7uhZnN7krCfiKIad08jv24G62otuJTdA'
  provider :identity, on_failed_registration: lambda { |env|    
    IdentitiesController.action(:new).call(env)
  }
end