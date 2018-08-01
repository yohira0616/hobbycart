require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

Dotenv::Railtie.load if %w(development test).include?(ENV['RAILS_ENV'])

module Hobbycart
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # config.cache_store = :redis_store, "redis://redis:6379/0/cache", { expires_in: 90.minutes }
    config.cache_store = :memory_store

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    #
    config.generators do |g|
      g.helper false
      g.template_engine :slim
      g.test_framework :rspec
      g.factory_bot true
      g.stylesheets false
      g.javascripts false
    end
  end
end
