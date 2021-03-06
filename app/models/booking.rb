class Booking < ApplicationRecord
  belongs_to :restaurant

  scope :past, -> { where('booked_on < ?', Date.today.to_s) } 
  scope :future, -> { where('booked_on > ?', Date.today.to_s) }
  scope :belonging_to_restaurants, ->(restaurants) { where(restaurant: restaurants) }

end
