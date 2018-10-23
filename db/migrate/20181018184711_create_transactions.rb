class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :name
      t.string :description
      t.string :transaction_type
      t.decimal :amount
      t.timestamp :date
      t.belongs_to :category, foreign_key: true
      t.belongs_to :account, foreign_key: true

      t.timestamps
    end
  end
end
