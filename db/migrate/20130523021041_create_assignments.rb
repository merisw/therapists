class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :fte
      t.string :caseload
      t.string :days

      t.timestamps
    end
  end
end
