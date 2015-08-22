class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :middlename
      t.string :lastname
      t.integer :age, default: 0
      t.string :addresss
      t.string :state
      t.string :gender
      t.string :cellno
      t.string :email
      t.integer :zipcode, default: 0

      t.timestamps null: false
    end
  end
end
