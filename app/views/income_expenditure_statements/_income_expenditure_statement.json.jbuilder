# frozen_string_literal: true

json.extract! income_expenditure_statement, :id, :name, :user_id, :created_at, :updated_at
json.url income_expenditure_statement_url(income_expenditure_statement, format: :json)
