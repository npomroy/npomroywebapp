class CreateBlogposts < ActiveRecord::Migration[5.0]
  def change
    create_table :blogposts do |t|
      t.string :title
      t.integer :user_id
      t.text :body
      t.timestamps
    end
  end
end
