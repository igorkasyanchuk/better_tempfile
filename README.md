# BetterTempfile

Ruby Temfile is the best and reliable way to create tempfiles. 

But when you do something like: `file = Tempfile.new("file.txt")` -> `file.path` is equal to `/tmp/file.txt20181103-58381-d61l83` (without extension).

This gem is adding a way to get proper extension for your Temfile.

Just call `BetterTemfile.new("file.txt")`.

## Installation

```ruby
gem 'better_tempfile'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install better_tempfile

## Usage

Instead of `Temfile.new("file.txt")` just call `BetterTemfile.new("file.txt")`.

`BetterTemfile` is inherites from Tempfile so it has all methods of it, and you must work with it same way as with Tempfile (for example close and unlink).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

You are welcome to contribute.

PS: The idea is not new a code sample take from `wicked_pdf`.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
