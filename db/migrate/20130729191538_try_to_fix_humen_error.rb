class TryToFixHumenError < ActiveRecord::Migration
  def change
    drop_table :humen
  end
end
