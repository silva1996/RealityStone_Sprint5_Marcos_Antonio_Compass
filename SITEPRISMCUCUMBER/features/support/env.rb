require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'rspec'

ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG['url']

Capybara.register_driver :my_chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => 
        {"args" => ["--incognito", "--start-maximized", "--window-size=1420,835"]})
if ENV['HEADLESS']
    caps['goog:chromeOptions']['args'] << '--headless'
end

    Capybara::Selenium::Driver.new(app, :browser => :chrome, capabilities: caps)
end

Capybara.default_driver = :my_chrome
Capybara.app_host = URL
