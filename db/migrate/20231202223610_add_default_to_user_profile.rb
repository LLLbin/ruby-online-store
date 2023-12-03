class AddDefaultToUserProfile < ActiveRecord::Migration[7.1]
  def change
    change_column_default :users, :profile, "You can introduce yourself here."
  end
end
