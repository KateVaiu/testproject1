Feature: Sign In

  Scenario: Successful sign in
    Given application is started
    And   user is on Login page
    When  user enters valid email
    And   user enters valid password
    And   user taps Sign in button
    Then  successful sign in message is shown
