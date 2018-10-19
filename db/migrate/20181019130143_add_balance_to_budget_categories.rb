class AddBalanceToBudgetCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :budget_categories, :balance, :decimal
  end
end
