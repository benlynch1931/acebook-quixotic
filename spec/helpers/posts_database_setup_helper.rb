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