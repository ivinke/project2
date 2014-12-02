class AddAverageRatingtoTrips < ActiveRecord::Migration
  def change
    add_column :trips, :average_rating, :float
  end
end
