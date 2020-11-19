# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  context('will return the messages from the database') do
    it 'wraps data into instances of Post' do
      result = Post.view_all
      result.each do |each_post|
        expect(each_post).to be_a Post
      end
    end
  end
end
