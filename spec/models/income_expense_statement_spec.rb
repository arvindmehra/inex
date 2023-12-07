# frozen_string_literal: true

require 'rails_helper'

RSpec.describe IncomeExpenditureStatement, type: :model do
  subject { create(:income_expenditure_statement) }

  context 'validations' do
    it 'validates the presense of name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end
end
