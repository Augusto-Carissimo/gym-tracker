class Workout < ApplicationRecord
  belongs_to :exercise
  has_many :repetions

  def max_weight
    repetions.maximum(:weight)
  end

  def total_weight
    repetions.map { |repetion| repetion.total_weight }.max
  end
end
