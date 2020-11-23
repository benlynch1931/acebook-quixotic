# frozen_string_literal: true

# require 'uri'


# class connects to databse to CRUD data needed, then wraps into the class instance
class Post < ApplicationRecord
  # attr_reader :id, :message, :create, :update
  #
  # def initialize(id:, message:, create:, update:)
  #   @id = id
  #   @message = message
  #   @create = create
  #   @update = update
  # end
  #
  # def self.view_all
  #   connection = connect_to_db
  #   result = connection.exec('SELECT * FROM posts ORDER BY created_at DESC;')
  #   result.map do |post|
  #     Post.new(
  #       id: post['id'],
  #       message: post['message'],
  #       create: post['created_at'],
  #       update: post['updated_at']
  #     )
  #   end
  # end
  #
  # def self.create(message:)
  #   connection = connect_to_db
  #   connection.exec("INSERT INTO posts(message, created_at, updated_at) VALUES('#{message}', '#{Time.now}', '#{Time.now}')")
  #   return nil
  # end
  #
  # def self.delete(id:)
  #   connection = connect_to_db
  #   connection.exec("DELETE FROM posts WHERE id=#{id};")
  # end
  #
  #
  # private
  #
  # def self.connect_to_db
  #
  #   if ENV['RAILS_ENV'] == 'test'
  #     PG.connect(dbname: 'pgapp_test')
  #   elsif ENV['RAILS_ENV'] == 'production'
  #     uri = URI.parse(ENV['DATABASE_URL'])
  #     dbname = uri.path.split('/')[1]
  #     PG.connect(dbname: dbname)
  #   else
  #     PG.connect(dbname: 'pgapp_development')
  #   end
  # end
end
