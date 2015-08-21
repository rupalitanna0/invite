class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.references :user
      t.references :event
      t.boolean :coming, default: false
      t.string :name
      t.string :middlename
      t.string :lastname
      t.string :address
      t.string :state
      t.string :zipcode
      t.integer :cellno, default: 0
      t.string :email

      t.timestamps null: false
    end
  end
end
