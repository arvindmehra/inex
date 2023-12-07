# frozen_string_literal: true

FactoryBot.define do
  factory :income do
    expense { 'salary' }
    amount { 10_000 }
    association :income_expenditure_statement
  end
end
