class CreatePostsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :posts_tables do |t|
      t.text :message
      add_foreign_key :posts, :users
      t.timestamps null: false
    end
  end
end
