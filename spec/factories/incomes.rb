# frozen_string_literal: true

FactoryBot.define do
  factory :income do
    category { 'salary' }
    earning { 5000 }
    association :income_expenditure_statement
  end
end
