module Pages
  class LoginPage < BasePage
    TITLE_ID                     = 'toolbar'
    EMAIL_ID                     = 'et_email'
    PASSWORD_ID                  = 'et_password'
    SIGN_IN_BUTTON_ID            = 'btn_signin'
    SIGN_IN_CONFIRMATION_MESSAGE = 'tv_message'
    ERROR_MESSAGE                = 'tv_error'

    def current_page?
      ui.element_displayed?(EMAIL_ID)
    end

    def enter_email(email)
      ui.enter_text(id: EMAIL_ID, text: email)
    end

    def enter_password(password)
      ui.enter_text(id: PASSWORD_ID, text: password)
    end

    def delete_email
      ui.delete_text(id: EMAIL_ID)
    end

    def tap_sign_in_button
      ui.tap_element(SIGN_IN_BUTTON_ID)
    end

    def sign_in_confirmation
      ui.element_text(SIGN_IN_CONFIRMATION_MESSAGE)
    end

    def error_message_text
      ui.element_text(ERROR_MESSAGE)
    end
  end
end