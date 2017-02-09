class Company < ActiveRecord::Base
  validates_presence_of :name, :address, :restaurant_type, :description
  
  belongs_to :user
  has_many :menus
  has_many :orders
  has_many :deliveries, through: :orders
end
