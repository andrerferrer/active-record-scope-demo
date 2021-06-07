class Booking < ApplicationRecord
  belongs_to :restaurant

  scope :past, -> { where('booked_on < ?', Date.today.to_s) } 
  scope :future, -> { where('booked_on > ?', Date.today.to_s) }
end
