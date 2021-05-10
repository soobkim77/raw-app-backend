class AddDefaultsToUser < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:users, :bio, from: nil, to: "Enter Bio Here")
    change_column_default(:users, :img, from: nil, to: "Enter image Here")
  end
end
