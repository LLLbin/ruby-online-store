class AddDefaultToUsername < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :username, :string, default: "username"
  end
end
