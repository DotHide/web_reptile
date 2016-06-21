# WebReptile

[![Travis](https://img.shields.io/travis/DotHide/reptile.svg?maxAge=2592000)](https://travis-ci.org/DotHide/reptile) 

WebReptile is a web spider framework using Ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'web_reptile'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install web_reptile

## Usage

```ruby
require('web_reptile')

domain = WebReptile.url("http://www.jd.com/allSort.aspx")
items = domain.grab(".category-items .category-item .items dt a")
items.map do |item|
    href = item.attr('href')
    text = item.text
    "[#{text}](#{href})"
end

# ["[电子书刊](//e.jd.com/ebook.html)", "[音像](//mvd.jd.com/)", "[英文原版](//channel.jd.com/1713-4855.html)", "[文艺](//channel.jd.com/p_wenxuezongheguan.html)", "[少儿](//book.jd.com/children.html)", "[人文社科](//book.jd.com/library/socialscience.html)", "[经管励志](//channel.jd.com/p_Comprehensive.html)", ...]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/DotHide/web_reptile.

