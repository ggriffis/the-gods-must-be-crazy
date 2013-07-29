class CreateGuardianAngels < ActiveRecord::Migration
  def change
    create_table :guardian_angels do |t|
      t.string :name
      t.string :top_virtue
      t.references :god, index: true

      t.timestamps
    end
  end
end
