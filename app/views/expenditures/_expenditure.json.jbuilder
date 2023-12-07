# frozen_string_literal: true

json.extract! expenditure, :id, :expense, :category, :created_at, :updated_at
json.url expenditure_url(expenditure, format: :json)
