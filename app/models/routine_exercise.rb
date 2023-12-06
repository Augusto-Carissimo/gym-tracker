# frozen_string_literal: true

class RoutineExercise < ApplicationRecord
  belongs_to :routine
  belongs_to :exercise
end
