
# OmniAuth WorkAbroad

WorkAbroad OAuth2 Strategy for OmniAuth.

Supports the OAuth 2.0 server-side and client-side flows.

[Read the WorkAbroad docs for more details: !!TODO!!]

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-workabroad'
```

Then `bundle install`.

## Usage

`OmniAuth::Strategies::Workabroad` is simply a Rack middleware. Read the OmniAuth docs for detailed instructions: https://github.com/intridea/omniauth.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/workabroad.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :workabroad, ENV['WORKABROAD_KEY'], ENV['WORKABROAD_SECRET']
end
```

See the example Sinatra app for full examples: !!TODO!!

## Configuring

## Auth Hash

Here's an example *Auth Hash* available in `request.env['omniauth.auth']`:

```ruby
TODO
```

## Token Expiry

`TODO: 60 days serverside`

## Supported Rubies

Actively tested with the following Ruby versions:

- MRI 2.1.0
- MRI 2.0.0
- MRI 1.9.3
- MRI 1.9.2
- MRI 1.8.7
- JRuby 1.7.9
- Rubinius (latest stable)

## License

Copyright (c) 2014 by Dirk Kelly

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Thanks

Big thanks to Mark Dodwell and Josef Šimánek for implementing the [omniauth-facebook] gem.

[omniauth-facebook]: https://github.com/mkdynamic/omniauth-facebook
