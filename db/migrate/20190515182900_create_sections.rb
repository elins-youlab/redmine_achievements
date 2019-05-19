class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |table|

      table.string :name, null: false
      table.string :achievements_list, null: false
      table.timestamps null: false
    end
  end
end