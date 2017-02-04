class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :company

  has_one :delivery
  has_many :menus
end
