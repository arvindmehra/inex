module IncomeExpenditureStatementsHelper

  def total_rows(income_expenditure_statement)
    [income_expenditure_statement.incomes.count, income_expenditure_statement.expenditures.count].max
  end

  def setup_incomes_and_expenditures
    if @income_expenditure_statement.new_record?
      @income_expenditure_statement.incomes.empty?
      Income::DEFAULT_INCOME_CATEGORIES.each do |category|
         @income_expenditure_statement.incomes.build(category: category)
      end
      Expenditure::DEFAULT_EXPENDITURE_CATEGORIES.each do |category| 
        @income_expenditure_statement.expenditures.build(category: category)
      end
    end
    
  end
end
