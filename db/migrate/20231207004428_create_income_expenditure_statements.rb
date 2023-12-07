class CreateIncomeExpenditureStatements < ActiveRecord::Migration[7.1]
  def change
    create_table :income_expenditure_statements do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
