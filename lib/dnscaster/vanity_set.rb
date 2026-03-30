module Dnscaster
  class VanitySet < Resource
    crud :all, :find, :create, :update, :delete

    belongs_to :nameserver_set
    belongs_to :vanity_zone
    has_many :zones

    attr :default_set, :pattern, :properties
    attr :in_use, :name, :vanity_domain # readonly


  end
end
