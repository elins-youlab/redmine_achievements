class CreateAchievementRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :achievement_relations do |table|

      table.references :achievement
      table.references :section
      table.timestamps null: false
    end
  end
end