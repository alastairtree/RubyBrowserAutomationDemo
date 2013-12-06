
Given(/^I have opened a browser at '(.*)'$/) do |url|
  browser.goto url
end

current_question = ''
When(/^I enter '(.*)' in the search box$/) do |my_question|
  current_question = my_question
  page = StackOverflowPage.new(browser)
  page.search_for my_question
end

Then(/^I should see that someone else has asked my question$/) do
  page = SearchResultsPage.new(browser)
  link = page.find_the_link_for current_question
  link.click
end

When(/^It has an answer$/) do
  text =  QuestionAnswerPage.new(browser).get_the_first_answer
  text.should_not be_nil
  puts text
end