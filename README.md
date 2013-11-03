# Selenium::Chrome::Mavericks

I made this gem because selenium-webdriver, from capybara anyway, won't
honor my passing of the argument "--verbose", which is the workaround to
getting chromedriver working on Mavericks.

In addition, the latest chromedriver release (2.5) does not fix the bug
that necessitated the --verbose workaround. I'm fed up and want to be
able to run Cucumber on my Mavericks computer, so here's a gem that
monkeypatches the selenium-webdriver 2.37.0

This gem depends on selenium-webdriver and is locked at that version --
as such you may replace that gem with this gem. This gem will never be
updated unless, for some strange reason, things get worse... so consider
it a temporary / throwaway.

Track the bug on selenium's bug tracker: https://code.google.com/p/chromedriver/issues/detail?id=599

## Installation

Add this line to your application's Gemfile:

    gem 'selenium-chrome-mavericks'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install selenium-chrome-mavericks

## Usage

Somewhere before you begin using selenium-webdriver, add this code:

```ruby
require 'selenium/chrome/mavericks'
```

For example, at the top of your env.rb, if using Cucumber.

It has now patched the correct initializer and will pass --verbose to
the child process, which for some reason makes chromedriver work right
on Mavericks...

Enjoy.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
