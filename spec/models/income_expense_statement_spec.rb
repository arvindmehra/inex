# frozen_string_literal: true

require 'rails_helper'

RSpec.describe IncomeExpenditureStatement, type: :model do
  subject { create(:income_expenditure_statement, :with_incomes, :with_expenditures) }

  context 'validations' do
    it 'validates the presense of name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end

  describe '#rating of statement' do
    it 'should return correct rating' do
      expect(subject.rating).to eq('C')
    end
  end
end
