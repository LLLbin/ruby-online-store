class RemoveProductFromCart < ActiveRecord::Migration[7.1]
  def change
    remove_reference :carts, :product, foreign_key: true
  end
end
