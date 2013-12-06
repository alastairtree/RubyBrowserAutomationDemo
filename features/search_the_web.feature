Feature: I can find answers to all my problems
      In order to do my job
      As a developer
      I want to find the answers to my problems

Scenario: Every question has already been answered
      Given I have opened a browser at 'http://stackoverflow.com'
      When I enter 'What is a Ruby gem?' in the search box
      Then I should see that someone else has asked my question
      And It has an answer
