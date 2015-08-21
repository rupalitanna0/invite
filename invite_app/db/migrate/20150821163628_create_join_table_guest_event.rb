class CreateJoinTableGuestEvent < ActiveRecord::Migration
  def change
    create_join_table :events, :guests do |t|
      t.boolean :accepted, default: false
    end
  end
end
