module Dnscaster
  class Railtie < Rails::Railtie

    config.before_initialize do
      config.action_dispatch.rescue_responses.merge!(
        'Dnscaster::RecordInvalid'  => :unprocessable_entity, # 422
        'Dnscaster::RecordNotFound' => :not_found, # 404
      )
    end

    initializer "dnscaster.cache_store" do |app|
      Dnscaster::Api.cache_store = Rails.cache
    end

    initializer "dnscaster.log_runtime" do |app|
      require 'dnscaster/api/log_subscriber'
      ActiveSupport.on_load(:action_controller) do
        include NCore::ControllerRuntime
        register_api_runtime Dnscaster::LogSubscriber, 'Dnscaster'
      end
    end

    initializer "dnscaster.logger" do |app|
      Dnscaster::Api.logger = Rails.logger
    end

  end
end
