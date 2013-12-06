
#add the world to all scenarios
World(){ SampleWorld.new() }

Before do

end

After do |scenario|
  if scenario.failed?
    screenshot = "./FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
    @browser.driver.save_screenshot(screenshot)
    encoded_img = @browser.driver.screenshot_as(:base64)
    embed("data:image/png;base64,#{encoded_img}",'image/png')
  end

  close_browser
end

def at_start

end
at_start() # not a special method like at_exit so we call it below!

at_exit do

end
