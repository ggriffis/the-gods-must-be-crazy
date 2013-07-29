class CreateGods < ActiveRecord::Migration
  def change
    create_table :gods do |t|
      t.string :name
      t.string :mission_statement

      t.timestamps
    end
  end
end
