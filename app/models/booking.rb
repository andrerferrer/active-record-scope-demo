class Booking < ApplicationRecord
  belongs_to :restaurant

  scope :past, -> { where('DATE(booked_on) < ?', Date.today) }
  scope :future, -> { where('DATE(booked_on) > ?', Date.today) }
end
