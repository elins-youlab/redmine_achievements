class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |table|
      table.references :user
      table.references :journal
      table.timestamps null: false
    end
  end
end
