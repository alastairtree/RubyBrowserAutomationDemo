class SampleWorld
  attr_reader :browser,
              :a_moment, :a_short_pause, :a_longer_pause


  def initialize
    @a_moment = 0.25
    @a_short_pause = 0.5
    @a_longer_pause = 1
    @scenario_timeout = 600

  end

  def browser
    @browser ||= BbcFirefox.new().browser
  end

  def close_browser
    if !@browser.nil?
      @browser.close
      @browser = nil
      sleep @a_moment #makes tests more reliable - give browser time to shutdown
    end
  end
end