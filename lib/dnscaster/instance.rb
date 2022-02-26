module Dnscaster
  class Instance < Resource

    belongs_to :nameserver

    attr :health, :ipv4, :ipv6, :region, :state
    attr_datetime :health_at

  end
end
