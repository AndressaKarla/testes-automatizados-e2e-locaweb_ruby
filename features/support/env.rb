require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helpers.rb'
require_relative 'page_helper.rb'

ENVIRONMENT = ENV['ENVIRONMENT']
puts "Ambiente >> #{ENVIRONMENT}"

BROWSER = ENV['BROWSER']
puts "Navegador >> #{BROWSER}"

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environments/#{ENVIRONMENT}.yml")
World(Pages, Helpers)

Capybara.configure do |config|
    if BROWSER.eql?('chrome_headless')
        config.default_driver = :selenium_chrome_headless
    elsif BROWSER.eql?('firefox_headless')
        config.default_driver = :selenium_headless
    elsif BROWSER.eql?('firefox')
        config.default_driver = :selenium
    else
        config.default_driver = :selenium_chrome
    end

    config.app_host = CONFIG['base_url']
    config.default_max_wait_time = 10
end
