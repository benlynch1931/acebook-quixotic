# frozen_string_literal: true

require 'rails_helper'
require 'capybara/rspec'

# RSpec.describe PostsController, type: :controller do
feature 'view posts page' do
  scenario 'displays the title Acebook' do
    visit('/posts')
    expect(page).to have_content 'ACEBOOK'
  end

  scenario 'displays the acebook Posts' do
    visit('/posts')
    expect(page).to have_text 'first test post to Acebook'
    expect(page).to have_text 'Tim is slacking awffffffff'
  end
end
