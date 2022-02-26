module Dnscaster
  include NCore::Builder

  configure do
    self.default_url = ENV['DNSCASTER_URL'] || 'https://api.dnscaster.com/v1/'

    self.default_headers = {
      accept: 'application/json',
      content_type: 'application/json',
      user_agent: "DNScaster/ruby v#{VERSION} [nc #{NCore::VERSION}]"
    }

    self.credentials = {
      api_key: ENV['DNSCASTER_KEY']
    }

    self.debug = false

    self.strict_attributes = true


    self.i18n_scope = :dnscaster

    self.instrument_key = 'request.dnscaster'

    self.status_page = 'http://status.notioneer.com/'

    self.auth_header_prefix = 'Dnscaster'

    self.bearer_credential_key = :api_key

    self.credentials_error_message = %Q{Missing API credentials. Set default credentials using env var "DNSCASTER_KEY" or "Dnscaster::Api.credentials = {api_key: YOUR_SECRET_KEY}"}

  end
end
