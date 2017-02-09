class Menu < ActiveRecord::Base
  belongs_to :order
  belongs_to :company
end
