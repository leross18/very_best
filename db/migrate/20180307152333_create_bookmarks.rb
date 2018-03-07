class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :restaurant_id
      t.integer :reservation_id
      t.integer :user_id

      t.timestamps

    end
  end
end
