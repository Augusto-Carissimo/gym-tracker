require 'rails_helper'

RSpec.describe Repetion, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:workout) }
  end

  describe 'validations' do
    it { is_expected.to validate_numericality_of(:reps).is_greater_than_or_equal_to(0) }
    it { is_expected.to validate_numericality_of(:weight).is_greater_than_or_equal_to(0) }
  end

  describe 'methods' do
    let!(:repetion) { create(:repetion, reps: 10, weight: 10) }

    it 'total weight' do
      expect(repetion.total_weight).to eq(100)
    end
  end
end
