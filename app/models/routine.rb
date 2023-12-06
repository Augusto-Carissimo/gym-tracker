# frozen_string_literal: true

class Routine < ApplicationRecord
  has_many :routine_exercises
  has_many :exercises, through: :routine_exercises

  validates :routine_name, uniqueness: true
end
