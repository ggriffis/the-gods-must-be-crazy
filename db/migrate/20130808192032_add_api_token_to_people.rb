class AddApiTokenToPeople < ActiveRecord::Migration
  def change
    add_column :people, :api_token, :string
  end
end
