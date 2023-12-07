# frozen_string_literal: true

json.array! @expenditures, partial: 'expenditures/expenditure', as: :expenditure
