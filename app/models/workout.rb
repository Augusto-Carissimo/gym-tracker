class Workout < ApplicationRecord
  belongs_to :exercise
  has_many :repetions

  def max_weight
    repetions.maximum(:weight)
  end
end
