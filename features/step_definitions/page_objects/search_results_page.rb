require_relative 'stackoverflow_page'

class SearchResultsPage < StackOverflowPage
  def initialize(browser)
    lookup =  {
        'Questions' => 'nav-questions',
        'Tags' => 'nav-tags',
        'Tour' => 'nav-tour',
        'Users' => 'nav-users'
    }
    super(browser,lookup)
  end

  def find_the_link_for(text)
    @browser.a(:title => text)
  end
end