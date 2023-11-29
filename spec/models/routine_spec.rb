require 'rails_helper'

RSpec.describe Routine, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:routine_exercises) }
    it { is_expected.to have_many(:exercises) }
  end

  describe 'validations' do
    it { is_expected.to validate_uniqueness_of(:routine_name) }
  end
end
