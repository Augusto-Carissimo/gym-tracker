# frozen_string_literal: true

class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
