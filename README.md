# Hashtel

Get a consistent (pretty) hex color from your strings.

This allows you to show nice colors in your UI's that
are consistent throughout your application.

Some ideas to use this for: users without avatars,
charts, categories etc.

## Installation

Add this line to your application's Gemfile:

    gem 'hashtel'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hashtel

## Usage

```ruby
"wow".pastel_color
# => "#606BE5"

"very color".pastel_color
# => "#789D9B"

"such pretty".pastel_color
# => "#87BD6C"

"wow".pastel_color
# => "#606BE5"
```

![wow](https://raw.github.com/jurre/hashtel/master/img/wow.png)
![very color](https://raw.github.com/jurre/hashtel/master/img/very-color.png)
![such pretty](https://raw.github.com/jurre/hashtel/master/img/such-pretty.png)

## Contributing

1. Fork it ( http://github.com/jurre/hashtel/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
