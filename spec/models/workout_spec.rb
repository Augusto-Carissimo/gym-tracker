# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Workout, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:exercise) }
    it { is_expected.to have_many(:repetions) }
  end

  describe 'methods' do
    let!(:workout) { create(:workout) }
    let!(:repetion) { create(:repetion, workout:, reps: 10, weight: 10) }
    let!(:repetion) { create(:repetion, workout:, reps: 10, weight: 20) }
    let!(:repetion) { create(:repetion, workout:, reps: 10, weight: 30) }

    it 'max weight' do
      expect(workout.max_weight).to eq(30)
    end

    it 'total_weight' do
      expect(workout.total_weight).to eq(300)
    end
  end
end
