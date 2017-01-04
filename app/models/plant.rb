class Plant < ActiveRecord::Base
  has_many :purchase_orders

  validates :price, :numericality => { :greater_than_or_equal_to => 0 }
end
