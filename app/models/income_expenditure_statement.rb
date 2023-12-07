class IncomeExpenditureStatement < ApplicationRecord
  
  belongs_to :user
  has_many :incomes, dependent: :destroy
  accepts_nested_attributes_for :incomes, allow_destroy: true, reject_if: proc { |attributes| attributes['earning'].blank? }
  has_many :expenditures, dependent: :destroy
  accepts_nested_attributes_for :expenditures, allow_destroy: true, reject_if: proc { |attributes| attributes['expense'].blank? }

  validates :user_id, presence: true
  validates :name, presence: true
  
end
