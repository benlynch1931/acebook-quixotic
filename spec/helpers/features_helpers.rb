def sign_up_and_log_in
  visit('/')
  click_link('Sign Up')
  fill_in(:user_email, with: 'test@example.com')
  fill_in(:user_password, with: '1234')
  fill_in(:user_password_confirmation, with: '1234')
  click_button('Create User')
  visit('/')
  click_link('Log In')
  fill_in(:email, with: 'test@example.com')
  fill_in(:password, with: '1234')
  click_button('Login')
end
