class CreateIncomes < ActiveRecord::Migration[7.1]
  def change
    create_table :incomes do |t|
      t.bigint :earning
      t.string :category
      t.references :income_expenditure_statement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
