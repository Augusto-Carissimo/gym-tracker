class Exercise < ApplicationRecord
  has_many :workouts

  validates :name, uniqueness: true
end
