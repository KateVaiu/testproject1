Then(/^user is on Login page$/) do
  Pages::LoginPage.new.await
end

And(/^user taps Sign in button$/) do
  Pages::LoginPage.new.await.tap_sign_in_button
end

Then(/^successful sign in message is shown$/) do
  page = Pages::LoginPage.new.await
  Wait.until(timeout_message: "Successful sign in confirmation message should be shown") { page.sign_in_confirmation == Constants::Login::SIGN_IN_CONFIRMATION }
end

And(/^(.+) error message is shown$/) do |error_type|
  ERROR_MESSAGES = {
    "Empty email and password" => Constants::Errors::EMPTY_CREDENTIALS,
    "Empty password"           => Constants::Errors::EMPTY_PASSWORD,
    "Empty email"              => Constants::Errors::EMPTY_EMAIL,
    "Invalid email"            => Constants::Errors::INVALID_EMAIL,
    "Incorrect email"          => Constants::Errors::INCORRECT_EMAIL,
    "Incorrect password"       => Constants::Errors::INCORRECT_PASSWORD,
  }
  page = Pages::LoginPage.new.await
  expected = ERROR_MESSAGES.fetch(error_type)
  actual   = page.error_message_text
  Assertions.assert_equal(expected, actual, "Error message is incorrect")
end

And(/^user enters (.*) email$/) do |email|
  Pages::LoginPage.new.await.enter_email(email)
end

And(/^user enters (.*) password$/) do |password|
  Pages::LoginPage.new.await.enter_password(password)
end

And(/^user delete email$/) do
  Pages::LoginPage.new.await.delete_email
end
