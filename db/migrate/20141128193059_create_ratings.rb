class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :trip_id
      t.integer :points

      t.timestamps

    end
  end
end
