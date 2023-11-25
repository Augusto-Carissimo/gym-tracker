require 'rails_helper'

RSpec.describe Set, type: :model do
  describe 'associations' do
    it { is_expected.to belongs_to(:exercise) }
    it { is_expected.to have_many(:repetions) }
  end

  describe 'methods' do
    let!(:set) { create(:set, exercise:) }
    let!(:repetion) { create(:repetion, set:, reps: 10, weight: 10) }

    it 'total weight' do
      expect(set.total_weight).to eq(100)
    end

    it 'max weight' do
      expect(set.max_weight).to eq(10)
    end
  end
end
