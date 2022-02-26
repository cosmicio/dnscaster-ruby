module Dnscaster
  class DomainProvider < Resource
    crud :all, :find

    attr :credential_state, :domains, :name, :provider_name, :provider_type
    attr :in_use
    attr_datetime :credential_state_at, :domains_updated_at

  end
end
