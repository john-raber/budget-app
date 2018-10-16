class CreateMonths < ActiveRecord::Migration[5.2]
  def change
    create_table :months do |t|
      t.belongs_to :budget, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
