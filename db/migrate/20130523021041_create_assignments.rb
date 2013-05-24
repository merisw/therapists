class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :fte
      t.string :caseload
      t.string :days
      t.integer :therapist_id
      t.integer :school_id

      t.timestamps
    end
  end
end
