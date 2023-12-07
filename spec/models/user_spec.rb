# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject { create(:user) }

  context 'when email is in not valid format' do
    it 'should raise as invalid email' do
      subject.email = 'nil.com'
      expect(subject).to_not be_valid
    end
  end

  context 'when email is in valid format' do
    it 'should have a valid email' do
      subject.email = 'abc@gmail.com'
      expect(subject).to be_valid
    end
  end

  context 'when password is not present' do
    it 'should not be valid' do
      subject.password = nil
      expect(subject).to be_valid
    end
  end
end
