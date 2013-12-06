require_relative 'stackoverflow_page'

class QuestionAnswerPage < StackOverflowPage
  def initialize(browser)
    lookup =  {
        'Answers' => 'answer',
        'Answer text' => 'post-text',
    }
    super(browser,lookup)
  end

  def get_the_first_answer
    answers_section = @browser.div(:class => @lookup['Answers'], :index => 0)
    first_answer = answers_section.div(:class => @lookup['Answer text'])
    first_answer.text
  end
end