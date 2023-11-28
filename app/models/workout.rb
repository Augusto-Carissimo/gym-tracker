class Workout < ApplicationRecord
  belongs_to :exercise
  has_many :repetions

  def total_weight
    100
  end

  def max_weight
    10
  end
end
