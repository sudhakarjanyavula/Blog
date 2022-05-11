class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.integer :phone_no
      t.integer :phone_no_2
      t.integer :phone_no_3

      t.timestamps
    end
  end
end
