class CreatePets < ActiveRecord::Migration[7.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.date :date
      t.string :species
      t.string :address

      t.timestamps
    end
  end
end
