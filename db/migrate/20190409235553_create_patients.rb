class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_visit
      t.string :reason_for_visit
      t.references :volunteer, foreign_key: true

      t.timestamps
    end
  end
end
