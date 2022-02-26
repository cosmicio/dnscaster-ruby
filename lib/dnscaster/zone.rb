module Dnscaster
  class Zone < Resource
    crud :all, :find, :create, :update, :delete

    belongs_to :domain_provider
    belongs_to :nameserver_set
    belongs_to :vanity_set
    has_many :hosts

    attr :default_ttl, :domain, :external_ref, :nx_ttl, :tags
    attr :delegation_updates, :glue_updates
    attr :notes
    attr :delegation_errors, :domain_utf8, :glue_errors, :in_use, :synced # readonly
    attr_datetime :live_checked_at


    def check(attribs={})
      params = parse_request_params(attribs, json_root: json_root).reverse_merge credentials: api_creds
      parsed, _ = request(:post, resource_path+'/check', params)
      load(parsed)
      errors.empty? ? self : false
    end

  end
end
