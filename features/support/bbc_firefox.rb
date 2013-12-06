require 'watir'
require 'selenium-webdriver'

class BbcFirefox
  attr_reader :browser

  def initialize
    @browser = create_firefox()
  end

  private

  def create_firefox
    profile = Selenium::WebDriver::Firefox::Profile.new

    # disable autoupdate
    profile['app.update.auto'] = false
    profile['app.update.enabled'] = false

    #enable ntlm
    profile['network.automatic-ntlm-auth.allow-non-fqdn'] = true
    profile['network.negotiate-auth.allow-non-fqdn']  = true

    #get proxy from environment variable
    #proxy = Selenium::WebDriver::Proxy.new(:http => ENV['HTTP_PROXY'] || ENV['http_proxy'])
    ENV['HTTP_PROXY'] = ENV['http_proxy'] = nil

    #create a new firefox instance
    Watir::Browser.new :firefox, :profile => profile #, :proxy => proxy
  end
end