class CreatePostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :reply_email
      t.string :secret_key
      t.integer :category_id
      t.timestamps
    end
  end
end
