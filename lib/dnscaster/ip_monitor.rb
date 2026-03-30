module Dnscaster
  class IpMonitor < Resource
    crud :all, :find, :create, :update, :delete

    belongs_to :nameserver_set
    has_many :hosts

    attr :external_ref, :hostname, :name, :properties, :uri
    attr :health, :in_use # readonly
    attr_datetime :health_at

  end
end
