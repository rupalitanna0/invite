class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.integer :age, default: 0
      t.string :password_digest
      t.string :addresss
      t.string :state
      t.string :gender
      t.integer :cellno, default: 0
      t.string :email

      t.timestamps null: false
    end
  end
end
