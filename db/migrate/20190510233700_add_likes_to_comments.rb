class AddLikesToComments < ActiveRecord::Migration[5.0]
  def change
    change_table :comments do |table|
      table.integer :likes, :default => 0
    end
  end
end