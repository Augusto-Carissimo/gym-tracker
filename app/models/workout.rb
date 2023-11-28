class Workout < ApplicationRecord
  belongs_to :exercise
  has_many :repetions
end
