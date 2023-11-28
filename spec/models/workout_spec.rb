require 'rails_helper'

RSpec.describe Workout, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:exercise) }
    it { is_expected.to have_many(:repetions) }
  end
end
