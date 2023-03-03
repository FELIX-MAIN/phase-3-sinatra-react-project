class CreateRooms < ActiveRecord::Migration[6.1]
  def change
      create_table :rooms do |t|
        t.string :name
        t.string :size
        t.integer :units
        t.integer :room_set_id
        t.string :img_url
      end
  end
end
