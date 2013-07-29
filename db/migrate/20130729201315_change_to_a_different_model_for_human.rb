class ChangeToADifferentModelForHuman < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :purpose
      t.timestamps
    end
  end
end
