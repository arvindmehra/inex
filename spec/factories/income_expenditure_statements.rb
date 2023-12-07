# frozen_string_literal: true

FactoryBot.define do
  factory :income_expenditure_statement do
    name { 'Janaury statement' }
    association :user
  end
end
