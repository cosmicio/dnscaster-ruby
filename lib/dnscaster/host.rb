module Dnscaster
  class Host < Resource
    crud :all, :find, :create, :update, :delete

    belongs_to :boundary
    belongs_to :ip_monitor
    belongs_to :zone

    attr :data, :dns_type, :external_ref, :hostname, :priority, :state, :ttl
    attr :notes
    attr :effective_ttl, :fqdn, :fqdn_utf8, :hostname_utf8 # readonly

  end
end
