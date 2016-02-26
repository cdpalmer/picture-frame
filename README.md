# PictureFrame

This is a gem to help organize and finding your debug statements in your server
logs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'picture-frame'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install picture-frame

## Usage

For this example, we will be dubugging `@account`.

In your server code, you can use picture frame like so:

```ruby
PictureFrame.frame(@account.first_name, @account.email, @account.uuid)
```

And in your server, you will see this as an output:

```
[2016-02-26 12:13:34] INFO  _____________________________
[2016-02-26 12:13:34] INFO | ._________________________. |
[2016-02-26 12:13:34] INFO | |                         | |
[2016-02-26 12:13:34] INFO | | Cody                    | |
[2016-02-26 12:13:34] INFO | | ----------------------  | |
[2016-02-26 12:13:34] INFO | | teampalmer.apps@gmail   | |
[2016-02-26 12:13:34] INFO | | .com                    | |
[2016-02-26 12:13:34] INFO | | ----------------------  | |
[2016-02-26 12:13:34] INFO | | 50691d7a-e6e7-4c45-     | |
[2016-02-26 12:13:34] INFO | | bd27-68553d639b87       | |
[2016-02-26 12:13:34] INFO | |                         | |
[2016-02-26 12:13:34] INFO | ._________________________. |
[2016-02-26 12:13:34] INFO  _____________________________
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cdpalmer/picture-frame.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

