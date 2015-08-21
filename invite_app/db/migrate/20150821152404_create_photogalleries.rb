class CreatePhotogalleries < ActiveRecord::Migration
  def change
    create_table :photogalleries do |t|
    t.references :event
      t.string :topic
      t.string :pics
      t.string :details

      t.timestamps null: false
    end
  end
end
