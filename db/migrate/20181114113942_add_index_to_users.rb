class AddIndexToUsers < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :provider
    add_index :users, :uid
    add_index :users, [:provider, :uid],  unique: true
  end
end
