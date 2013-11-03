require "selenium/chrome/mavericks/version"
require 'selenium-webdriver'
module Selenium
  module WebDriver
    module Chrome
      class Service
        def initialize(executable_path, port, *extra_args)
          @uri           = URI.parse "http://#{Platform.localhost}:#{port}"
          server_command = [executable_path, "--port=#{port}", *extra_args]

          # Look I can't wait for a fix to chromedriver or selenium-webdriver's (or capybara's?) arg passing
          server_command.push('--verbose') # so just work in Mavericks already!!!!!!!! kthx

          @process       = ChildProcess.build(*server_command)
          @socket_poller = SocketPoller.new Platform.localhost, port, START_TIMEOUT

          @process.io.inherit! if $DEBUG == true
        end
      end
    end
  end
end
