# frozen_string_literal: true

FactoryBot.define do
  factory :expenditure do
    category { 'mortgage' }
    expense { 2000 }
    association :income_expenditure_statement
  end
end
