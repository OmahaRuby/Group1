config = YAML.load_file(Rails.root.join("config", "omniauth.yml"))
meetup = config["meetup"]

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :meetup, meetup["consumer_key"], meetup["consumer_secret"]
end
