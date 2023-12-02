class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :cart
  has_many :orders

  validates :username, presence: true, length: { minimum: 3, maximum: 50 }
  validates :role, presence: true
end