class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :nickname
      t.belongs_to :budget, foreign_key: true

      t.timestamps
    end
  end
end
