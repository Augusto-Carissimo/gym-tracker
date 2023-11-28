class Workout < ApplicationRecord
  belongs_to :exercise
  has_many :repetions

  def max_weight
    30
  end
end
