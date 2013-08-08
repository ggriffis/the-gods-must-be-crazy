class RemoveApiKey < ActiveRecord::Migration
  def change
    remove_column :people, :api_token
  end
end
