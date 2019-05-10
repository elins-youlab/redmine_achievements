class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |table|
      table.string :name, null: false
      table.string :description
      table.integer :prize, null: false
      table.string :action, null: false
      table.date :from
      table.float :counter
      table.string :rank
      table.boolean :status, null: false# 1 - auto, 0 - manual
      table.timestamps null: false
    end
  end
end
