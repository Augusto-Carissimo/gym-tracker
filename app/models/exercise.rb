class Exercise < ApplicationRecord
  has_many :workouts

  validates :name, uniqueness: true

  def max_weight
    workouts.map { |workout| workout.max_weight }.max
  end
end
