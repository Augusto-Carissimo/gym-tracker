require 'rails_helper'

RSpec.describe Exercise, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:workouts) }
  end

  describe 'validations' do
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
