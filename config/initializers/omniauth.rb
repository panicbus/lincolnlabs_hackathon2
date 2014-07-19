OmniAuth.config.logger = Rails.logger


Rails.application.config.middleware.use OmniAuth::Builder do

  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET'] #, {:scope => "publish_actions, publish_stream, read_stream"}
  
end