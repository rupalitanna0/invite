class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :nameevent
      t.string :picsevent
      t.string :details
      t.string :location

      t.timestamps null: false
    end
  end
end
