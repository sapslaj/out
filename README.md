# Out

`out` is a program that outputs everything. This is a proof of concept and probably isn't ready for production.

## Installation

```sh
git clone https://github.com/sapslaj/out
cd out
rake install
```

## Usage

`out some_file`

or

`out some_directory`

![Demo](http://i.imgur.com/QHG4jwx.png)

## Making your own handlers

*See `lib/out/handlers` for examples.*

```ruby
# Subclass Out::Handler
class DemoHandler < Out::Handler
  match /^demo$/ # Match using a regex
  match "demo" # Match using a string
  match proc { |t| t == 'demo' } # Match using a proc

  # Calls this method if it's matched
  def execute(*arguments)
    puts File.read(arguments.last)
  end
end

```

# Contributing

The API is _super_ unstable at this point, and the final project will most likely be rewritten in a more portable language, so contribute at your own risk. There are also no tests. So. Have fun with that.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
