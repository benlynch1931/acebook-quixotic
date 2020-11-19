# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do

  context(' #view_all') do

    it 'wraps data into instances of Post' do
      result = Post.view_all
      result.each do |each_post|
        expect(each_post).to be_a Post
      end

    end
  end

  context(' #create') do

    it "adds a new post to the database" do
      created = Post.create(message: "Testing this works!")
      expect(created).to eq nil
      expect(Post.view_all[0].message).to eq('Testing this works!')
    end
  end

  context(' #delete') do

    it "adds a new post to the database" do
      deleted = Post.delete(id: 2)
      expect(deleted).to be_a PG::Result
      puts Post.view_all
      expect(Post.view_all.length).to eq 1
    end
  end
end
