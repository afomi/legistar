# Legistar

This .gem is for interacting with the [Legistar API](https://webapi.legistar.com/Help).

## Installation

To install the `legistar` .gem, add this line to your application's Gemfile:

```ruby
gem 'legistar'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install legistar

## Usage

See [/specs](/spec/legistar/bodies_spec.rb) for examples, like:

```ruby
client = Legistar::Bodies.new(host: "mesa")
client.get("362") # => returns a specific Governing Body from Mesa
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

#### Publishing the gem

Assumptions:

* [VERSION.rb](/lib/legistar/version.rb) has been updated
* User has access to Rubygems, if publishing.

1. Run `gem build legistar.gemspec` to build `legistar-0.x.x.gem`
1. Run `gem push legistar-0.x.x.gem` to publish the .gem to [Rubygems](https://wwww.rubygems.org)

## Contributing

Bug reports and pull requests (with tests/specs) are welcome on GitHub at https://github.com/afomi/legistar.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
