class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items

  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
