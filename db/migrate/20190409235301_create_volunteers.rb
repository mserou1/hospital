class CreateVolunteers < ActiveRecord::Migration[5.2]
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :organization

      t.timestamps
    end
  end
end
