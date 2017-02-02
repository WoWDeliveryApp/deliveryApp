class Company < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of :name, :address, :restaurant_type, :description
end
