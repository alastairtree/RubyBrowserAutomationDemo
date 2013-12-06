class StackOverflowPage
  def initialize(browser, lookup = {})
    raise 'missing browser' if browser.nil?
    @browser = browser
    @lookup = lookup
  end

  def text_field(label)
    browser.text_field(:id => @lookup[label])
  end

  def select_list(label)
    @browser.select_list(:id => @lookup[label])
  end

  def button(text)
    @browser.button(:id => @lookup[text])
  end

  def image(text)
    @browser.image(:id => @lookup[text])
  end

  def link(text)
    @browser.a(:id => @lookup[text])
  end

  def checkbox(label)
    @browser.checkbox(:id => @lookup[label])
  end

  def table(label)
    @browser.table(:id=>@lookup[label])
  end

  def element(label)
    @browser.element(:id => @lookup[label])
  end

  def search_for(my_question)
    textbox = @browser.text_field(:name => 'q')
    textbox.set(my_question)
    textbox.send_keys :enter
  end
end