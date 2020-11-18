require 'pg'

def create_posts_table
  connection = PG.connect(dbname: 'pgapp_test')
  connection.exec("
    CREATE TABLE posts (
      id SERIAL PRIMARY KEY,
      message VARCHAR(1000),
      created_at TIMESTAMP,
      modified_at TIMESTAMP);
      ")
end

def reset_posts_table
  connection = PG.connect(dbname: 'pgapp_test')
  connection.exec("
    TRUNCATE TABLE posts RESTART IDENTITY
    ")
end

def populate_posts_table
  connection = PG.connect(dbname: 'pgapp_test')
  connection.exec("
    INSERT INTO posts(message, created_at, modified_at)
    VALUES('first test post to Acebook', '#{(Time.now - 14400).strftime('%Y%m%d %H%M%S')}', '#{(Time.now - 10800).strftime('%Y%m%d %H%M%S')}');

    INSERT INTO posts(message, created_at, modified_at)
    VALUES('Tim is slacking awffffffff', '#{(Time.now - 3600).strftime('%Y%m%d %H%M%S')}', '#{Time.now.strftime('%Y%m%d %H%M%S')}');
  ")
end
