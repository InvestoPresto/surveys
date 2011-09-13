require 'openid/store/filesystem'
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['facebook_key'], ENV['facebook_secret'] if ENV['facebook_key'] && ENV['facebook_secret']
  provider :twitter, ENV['twitter_key'], ENV['twitter_secret'] if ENV['twitter_key'] && ENV['twitter_secret']
  provider :open_id, OpenID::Store::Filesystem.new('/tmp')
end
