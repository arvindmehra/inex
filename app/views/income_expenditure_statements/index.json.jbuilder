# frozen_string_literal: true

json.array! @income_expenditure_statements, partial: 'income_expenditure_statements/income_expenditure_statement',
                                            as: :income_expenditure_statement
