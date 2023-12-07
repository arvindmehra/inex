# frozen_string_literal: true

class Income < ApplicationRecord
  belongs_to :income_expenditure_statement

  DEFAULT_INCOME_CATEGORIES = %w[salary overtime housing_benefits].freeze
end
