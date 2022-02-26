require 'ncore'

%w(version api_config).each do |f|
  require "dnscaster/api/#{f}"
end

%w(
  boundary
  domain_provider
  host
  instance
  ip_monitor
  nameserver
  nameserver_set
  region
  vanity_set
  zone
).each do |f|
  require "dnscaster/#{f}"
end

require 'dnscaster/api/railtie' if defined?(Rails)
