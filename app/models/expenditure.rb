# frozen_string_literal: true

class Expenditure < ApplicationRecord
  belongs_to :income_expenditure_statement

  DEFAULT_EXPENDITURE_CATEGORIES = %w[mortgage utilities travel food].freeze
end
