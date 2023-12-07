class IncomeExpenditureStatement < ApplicationRecord
  
  belongs_to :user
  has_many :incomes, dependent: :destroy
  accepts_nested_attributes_for :incomes, allow_destroy: true, reject_if: proc { |attributes| attributes['earning'].blank? }
  has_many :expenditures, dependent: :destroy
  accepts_nested_attributes_for :expenditures, allow_destroy: true, reject_if: proc { |attributes| attributes['expense'].blank? }

  validates :user_id, presence: true
  validates :name, presence: true

  def rating
    begin 
      ratio = expenditures.sum(:expense) * 100 / incomes.sum(:earning)
    rescue ZeroDivisionError => e
      ratio = 0
    end
    case ratio
    when ratio < 10
      "A"
    when (10..30)
      "B"
    when (31..50)
      "C"
    else
      "D"
    end
  end

end
