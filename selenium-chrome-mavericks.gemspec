# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'selenium/chrome/mavericks/version'

Gem::Specification.new do |spec|
  spec.name          = "selenium-chrome-mavericks"
  spec.version       = Selenium::Chrome::Mavericks::VERSION
  spec.authors       = ["Keyvan Fatehi"]
  spec.email         = ["keyvanfatehi@gmail.com"]
  spec.description   = %q{Monkeypatches selenium-webdriver 2.37.0 to pass --verbose to chromedriver so it works in Mavericks}
  spec.summary       = %q{Monkeypatches selenium-webdriver 2.37.0 to pass --verbose to chromedriver so it works in Mavericks}
  spec.homepage      = "https://github.com/keyvanfatehi/selenium-chrome-mavericks"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency 'selenium-webdriver', '2.37.0'
end
