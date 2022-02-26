module Dnscaster
  class Region < Resource
    crud :all

    attr :name, :region, :state

  end
end
