# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Exercise, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:workouts) }
    it { is_expected.to have_many(:routine_exercises) }
  end

  describe 'validations' do
    it { is_expected.to validate_uniqueness_of(:name) }
  end

  describe 'methods' do
    let!(:exercise) { create(:exercise) }
    let!(:workout1) { create(:workout, exercise:) }
    let!(:workout2) { create(:workout, exercise:) }
    let!(:workout3) { create(:workout, exercise:) }
    let!(:repetion1) { create(:repetion, workout: workout1, reps: 10, weight: 10) }
    let!(:repetion2) { create(:repetion, workout: workout2, reps: 10, weight: 20) }
    let!(:repetion3) { create(:repetion, workout: workout3, reps: 10, weight: 40) }

    it 'max weight' do
      expect(exercise.max_weight).to eq(40)
    end

    it 'total weight' do
      expect(exercise.total_weight).to eq(400)
    end
  end
end
