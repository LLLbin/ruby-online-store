class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy

  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0.0 }
end
