class Post < ApplicationRecord

  def self.view_all
    connection = self.connect_to_db
    connection.exec('
      SELECT * FROM posts')
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
