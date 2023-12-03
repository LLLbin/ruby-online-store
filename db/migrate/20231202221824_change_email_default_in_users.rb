class ChangeEmailDefaultInUsers < ActiveRecord::Migration[7.1]
  def change
    change_column_default :users, :email, 'user@example.com'
  end
end
