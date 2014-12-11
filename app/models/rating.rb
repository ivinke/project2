class Rating < ActiveRecord::Base
belongs_to :user
belongs_to :trip
validate :unique_points, on: :create



  def unique_points
    if Rating.where({ :user_id => self.user_id, :trip_id => self.trip_id }).present?

      errors.add(:user_id, "has already rated this trip")
    end
  end
end

