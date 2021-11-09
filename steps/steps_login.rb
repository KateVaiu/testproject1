Then(/^user is on Login page$/) do
  Pages::LoginPage.new.await
end

When(/^user enters valid email$/) do
  Pages::LoginPage.new.await.enter_email(Constants::Login::VALID_EMAIL)
end

When(/^user enters valid password$/) do
  Pages::LoginPage.new.await.enter_password(Constants::Login::VALID_PASSWORD)
end

And(/^user taps Sign in button$/) do
  Pages::LoginPage.new.await.tap_sign_in_button
end

Then(/^successful sign in message is shown$/) do
  page = Pages::LoginPage.new.await
  Wait.until(timeout_message: "Successful sign in confirmation message should be shown") { page.sign_in_confirmation == Constants::Login::SIGN_IN_CONFIRMATION }
end
