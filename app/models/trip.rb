class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :cities
  has_many :ratings
  has_many :users_who_have_rated, :through => :ratings, :source => :user

  validates :from_city_id, :presence => true
  validates :to_city_id, :presence => true
  validates :time, :presence => true
  validates :cost, :presence => true

  validates :transportation, :presence => true

  #custom validation
  validate :unique_to_from_city

  def unique_to_from_city
    if from_city_id == to_city_id
      errors.add(:from_city, "cannot be the same as to_city")
    end
  end

  def from_city
     City.find(from_city_id)
  end

  def to_city
     City.find(to_city_id)
  end

end
