class Repetion < ApplicationRecord
  belongs_to :workout

  validates :reps, numericality: { greater_than_or_equal_to: 0 }
  validates :weight, numericality: { greater_than_or_equal_to: 0 }

end
