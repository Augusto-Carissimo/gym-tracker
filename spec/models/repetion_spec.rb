require 'rails_helper'

RSpec.describe Repetion, type: :model do
  describe 'associations' do
    it { is_expected.to belongs_to(:workout) }
  end

  describe 'validations' do
    it { is_expected.to validate_numericality_of(:reps).is_greater_than_or_equal_to(0) }
    it { is_expected.to validate_numericality_of(:weight).is_greater_than_or_equal_to(0) }
  end
end
