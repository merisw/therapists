class CreateTherapists < ActiveRecord::Migration
  def change
    create_table :therapists do |t|
      t.string :name
      t.string :email
      t.string :therapist_type
      t.string :fte

      t.timestamps
    end
  end
end
