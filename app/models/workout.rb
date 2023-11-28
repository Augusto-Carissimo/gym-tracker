# frozen_string_literal: true

class Workout < ApplicationRecord
  belongs_to :exercise
  has_many :repetions

  def max_weight
    repetions.maximum(:weight)
  end

  def total_weight
    repetions.map(&:total_weight).max
  end
end
