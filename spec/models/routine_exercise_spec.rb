require 'rails_helper'

RSpec.describe RoutineExercise, type: :model do
  it { is_expected.to belong_to(:routine) }
  it { is_expected.to belong_to(:exercise) }
end
