# frozen_string_literal: true

require 'rails_helper'

def sign_in(user)
  post user_session_path, params: { user: { email: user.email, password: user.password } }
end

RSpec.describe 'IncomeExpenditureStatement', type: :request do
  describe 'GET #index' do
    let!(:user) { create(:user) }
    it 'should return http status 200' do
      sign_in(user)
      get new_income_expenditure_statement_path
      expect(response).to have_http_status(200)
    end

    it 'renders new template' do
      sign_in(user)
      get new_income_expenditure_statement_path
      expect(response.body).to render_template('new')
    end

    it 'should have correct place holder text on new path' do
      sign_in(user)
      get new_income_expenditure_statement_path
      expect(response.body).to include('New income expenditure statement')
      expect(response.body).to include('Income (Monthly)')
      expect(response.body).to include('Expenditures (Monthly)')
    end

    it 'should have correct place holder text on index path' do
      sign_in(user)
      get income_expenditure_statements_path
      expect(response.body).to include('Income Expenditure Statements')
    end
  end

  describe 'POST #create' do
    let!(:user) { create(:user) }
    subject(:send_request) { post(request_uri, params:) }
    let(:request_uri) { '/income_expenditure_statements' }
    context 'when params are provided' do
      let(:params) do
        { 'income_expenditure_statement' =>
      { 'name' => 'JAN Statement',
        'incomes_attributes' => { '0' => { 'category' => 'salary', 'earning' => '10000' } },
        'expenditures_attributes' => { '0' => { 'category' => 'mortgage', 'expense' => '2000' } } } }
      end

      it 'creates an authority and then redirects to the authorities page' do
        sign_in(user)
        send_request
        expect(response).to have_http_status(:redirect)
        expect(response).to redirect_to(income_expenditure_statement_path(IncomeExpenditureStatement.last.id))
      end
    end
  end
end
