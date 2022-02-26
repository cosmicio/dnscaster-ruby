module Dnscaster
  class NameserverSet < Resource
    crud :all, :find, :create, :update, :delete

    has_many :boundaries
    has_many :ip_monitors
    has_many :nameservers
    has_many :vanity_sets
    has_many :zones

    attr :external_ref, :hostmaster, :ip_ttl, :name, :ns_ttl
    attr :in_use # readonly

  end
end
