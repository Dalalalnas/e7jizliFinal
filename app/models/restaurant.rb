class Restaurant < ActiveRecord::Base
  belongs_to :category
  has_many :bookings 
end
