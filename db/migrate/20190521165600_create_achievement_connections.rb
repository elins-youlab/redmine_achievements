class CreateAchievementConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :achievement_connections do |table|

      table.references :achievement
      table.references :user
      table.date :from
      table.timestamps null: false
    end
  end
end