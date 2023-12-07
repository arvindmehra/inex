class Income < ApplicationRecord
  belongs_to :income_expenditure_statement

  DEFAULT_INCOME_CATEGORIES = %w[salary overtime housing_benefits].freeze

  def basic_fields
    self.fields.where('field_type = ?', 'basic')
  end
end
