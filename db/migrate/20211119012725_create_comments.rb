class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :author
      t.text :content
      t.integer :post_id

      t.timestamps
    end
    add_foreign_key :comments, :posts
  end
end
