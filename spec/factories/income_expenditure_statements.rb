# frozen_string_literal: true

FactoryBot.define do
  factory :income_expenditure_statement do
    name { 'Janaury statement' }
    association :user
    trait :with_incomes do
      after(:build) do |statement|
        statement.incomes << build(:income)
      end
    end

    trait :with_expenditures do
      after(:build) do |statement|
        statement.expenditures << build(:expenditure)
      end
    end
  end
end
