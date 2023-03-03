class CreateRoomSets < ActiveRecord::Migration[6.1]
  def change
    create_table :room_sets do |t|
      t.string :name
      t.integer :year
    end
  end
end
