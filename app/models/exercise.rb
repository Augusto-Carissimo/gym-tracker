# frozen_string_literal: true

class Exercise < ApplicationRecord
  has_many :workouts

  validates :name, uniqueness: true

  def max_weight
    workouts.map(&:max_weight).max
  end

  def total_weight
    workouts.map(&:total_weight).max
  end
end
