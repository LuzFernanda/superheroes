class CreateHeroes < ActiveRecord::Migration
  def change
    create_table :heroes do |t|
      t.string :name
      t.integer :age
      t.string :email

      t.timestamps null: false
    end
  end
end
