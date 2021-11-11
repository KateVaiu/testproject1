Feature: Sign In
  Scenario Outline: Proper error message is shown when user tries to sign in with empty credentials
    Given application is started
    And   user is on Login page
    When  user taps Sign in button
    Then  Empty email and password error message is shown
    When  user enters <email> email
    And   user taps Sign in button
    Then  Empty password error message is shown
    When  user delete email
    And   user enters <password> password
    And   user taps Sign in button
    Then  Empty email error message is shown
  Examples:
      | email         | password    |
      |admin@ctm.com  | password123 |

  Scenario Outline:  Proper error message is shown when user tries to sign in with invalid email
    Given application is started
    And   user is on Login page
    When  user enters <email> email
    And   user enters <password> password
    And   user taps Sign in button
    Then  Invalid email error message is shown
  Examples:
    | email         | password    |
    |adminctm.com   | password123 |
    |admin@ctmcom   | password123 |
    |@ctmcom        | password123 |
    |ad min@ctm.com | password123 |
    |admin@c tm.com | password123 |
    |яdmin@сtm.com  | password123 |

  Scenario Outline:  Proper error message is shown when user tries to sign in with valid but incorrect email
    Given application is started
    And   user is on Login page
    When  user enters <email> email
    And   user enters <password> password
    And   user taps Sign in button
    Then  Incorrect email error message is shown
    Examples:
      | email                  | password    |
      | 1a-D_m.in@1c-t[m].C.om | password123 |

  Scenario Outline: Proper error message is shown when user tries to sign in with valid but incorrect password
    Given application is started
    And   user is on Login page
    And   user enters <email> email
    When  user enters <password> password
    And   user taps Sign in button
    Then  Incorrect password error message is shown
    Examples:
      | email         | password                                              |
      | admin@ctm.com | 1_Long-password.with,different1!symbols@andяlanguages# |


  Scenario Outline: Sign in confirmation message is shown after successful sign in
    Given application is started
    And   user is on Login page
    And   user enters <email> email
    When  user enters <password> password
    And   user taps Sign in button
    Then  successful sign in message is shown
    Examples:
      | email         | password    |
      | admin@ctm.com | password123 |
      | Admin@ctm.com | password123 |