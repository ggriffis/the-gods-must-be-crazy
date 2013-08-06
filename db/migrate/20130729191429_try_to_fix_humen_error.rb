class TryToFixHumenError < ActiveRecord::Migration
  def change
    create_table :humans do |t|
      t.string :name
      t.string :purpose
      t.timestamps
    end
  end
end
