require 'rails_helper'

RSpec.describe Exercise, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:workouts) }
  end

  describe 'validations' do
    it { is_expected.to validate_uniqueness_of(:name) }
  end

  describe 'methods' do
    let!(:exercise) { create(:exercise) }
    let!(:workout1) { create(:workout, exercise: exercise) }
    let!(:workout2) { create(:workout, exercise: exercise) }
    let!(:workout3) { create(:workout, exercise: exercise) }
    let!(:repetion1) { create(:repetion, workout: workout1, reps: 10, weight: 10) }
    let!(:repetion2) { create(:repetion, workout: workout2, reps: 10, weight: 20) }
    let!(:repetion3) { create(:repetion, workout: workout3, reps: 10, weight: 30) }

    it 'max weight' do
      expect(exercise.max_weight).to eq(30)
    end
  end
end
