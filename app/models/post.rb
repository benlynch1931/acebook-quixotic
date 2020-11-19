# frozen_string_literal: true


# class connects to databse to CRUD data needed, then wraps into the class instance
class Post < ApplicationRecord
  attr_reader :id, :message, :create, :update

  def initialize(id:, message:, create:, update:)
    @id = id
    @message = message
    @create = create
    @update = update
  end

  def self.view_all
    connection = connect_to_db
    result = connection.exec('SELECT * FROM posts')
    result.map do |post|
      Post.new(
        id: post['id'],
        message: post['message'],
        create: post['created_at'],
        update: post['updated_at']
      )
    end
  end

  def self.connect_to_db
    if ENV['RAILS_ENV'] == 'test'
      PG.connect(dbname: 'pgapp_test')
    else
      PG.connect(dbname: 'pgapp_development')
    end
  end
end
