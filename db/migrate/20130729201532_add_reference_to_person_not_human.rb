class AddReferenceToPersonNotHuman < ActiveRecord::Migration
  def change
    change_table :guardian_angels do |t|
      t.references :person
    end
  end
end
