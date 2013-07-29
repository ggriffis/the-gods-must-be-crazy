class AddReferenceToHumanFromGuardianAngel < ActiveRecord::Migration
  def change
    change_table :guardian_angels do |t|
      t.references :human
    end
  end
end
