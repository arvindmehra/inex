class CreateExpenditures < ActiveRecord::Migration[7.1]
  def change
    create_table :expenditures do |t|
      t.bigint :expense
      t.string :category
      t.references :income_expenditure_statement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
