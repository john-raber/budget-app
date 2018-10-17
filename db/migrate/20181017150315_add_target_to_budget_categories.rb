class AddTargetToBudgetCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :budget_categories, :target, :integer
  end
end
