module Dnscaster
  class Nameserver < Resource
    crud :all, :find, :create, :delete

    belongs_to :nameserver_set

    attr :region
    attr :fqdn, :instances, :vanity_fqdns, :state # readonly

  end
end
