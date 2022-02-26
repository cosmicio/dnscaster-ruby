module Dnscaster
  class Boundary < Resource
    crud :all, :find, :create, :update, :delete

    belongs_to :nameserver_set
    has_many :hosts

    attr :external_ref, :ips, :locations, :name
    attr :in_use # readonly

  end
end
