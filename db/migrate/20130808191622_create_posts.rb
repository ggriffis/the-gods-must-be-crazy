class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :message_id
      t.integer :person_id

      t.timestamps
    end
  end
end
