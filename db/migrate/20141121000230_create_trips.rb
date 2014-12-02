class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :from_city_id
      t.integer :to_city_id
      t.integer :user_id
      t.integer :time
      t.integer :cost
      t.text :notes
      t.text :photo
      t.string :transportation

      t.timestamps

    end
  end
end
