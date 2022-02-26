# DNScaster

[DNScaster](https://dnscaster.com/) is a powerful, easy to use DNS service, with full suite of modern features, including near realtime updates, Geo-location, true ALIAS records, IP restrictions, target monitoring, and more.

This gem works with both Rails and plain Ruby.



## Usage

To your Gemfile, add:

    gem 'dnscaster'

Then go create an API key (DNScaster -> Preferences -> API keys) and set this environment variable:

    DNSCASTER_KEY = key_SAMPLE

Alternatively, the API key may be configured programmatically. Be sure to store your key securely and not commit it with your code!

    Dnscaster::Api.credentials = {
      api_key: 'key_SAMPLE'
    }



## Reference

For full details on the DNScaster API, see our [documentation](https://dnscaster.com/docs).



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request



## License

MIT
