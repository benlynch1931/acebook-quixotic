# frozen_string_literal: true

require 'rails_helper'
require 'capybara/rspec'

# RSpec.describe PostsController, type: :controller do
feature 'view posts page' do
  scenario 'displays the title Acebook' do
    visit('/')
    expect(page).to have_content 'Acebook'
  end

  scenario 'displays the acebook Posts' do
    sign_up_and_log_in
    visit('/posts')
    expect(page).to have_text 'first test post to Acebook'
    expect(page).to have_text 'Tim is slacking awffffffff'
  end

  scenario 'can add a post' do
    sign_up_and_log_in
    visit('/posts')
    fill_in(:message, with: "Hello World!")
    click_button('Add Post')
    expect(page).to have_content 'Hello World!'
  end

  scenario 'can add a post' do
    sign_up_and_log_in
    visit('/posts')
    click_button('delete2')
    expect(page).not_to have_content 'Tim is slacking awffffffff'
  end

end
