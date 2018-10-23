class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.decimal :balance
      t.belongs_to :budget, foreign_key: true

      t.timestamps
    end
  end
end
