class Post < ApplicationRecord

  attr_reader :id, :message, :create, :modify

  def initialize(id:, message:, create:, modify:)
    @id = id
    @message = message
    @create = create
    @modify = modify
  end

  def self.view_all
    connection = self.connect_to_db
    result = connection.exec('SELECT * FROM posts')
    result.map { |post| Post.new(id: post['id'], message: post['message'], create: post['created_at'], modify: post['modified_at']) }
  end


  private

  def self.connect_to_db
    if ENV['RAILS_ENV'] == 'test'
      PG.connect(dbname: 'pgapp_test')
    else
      PG.connect(dbname: 'pgapp_development')
    end
  end

end
