class Repetion < ApplicationRecord
  belongs_to :workout

  validates :reps, numericality: { greater_than_or_equal_to: 0 }
  validates :weight, numericality: { greater_than_or_equal_to: 0 }

  def total_weight
    100
  end

  def max_weight
    10
  end
end
