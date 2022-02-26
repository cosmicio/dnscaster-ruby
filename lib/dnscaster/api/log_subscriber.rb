require 'ncore/rails/log_subscriber'

module Dnscaster
  class LogSubscriber < ActiveSupport::LogSubscriber
    include NCore::LogSubscriber
    self.runtime_variable = 'dnscaster_runtime'
  end
end

Dnscaster::LogSubscriber.attach_to :dnscaster
