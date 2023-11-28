# frozen_string_literal: true

class CreateRepetions < ActiveRecord::Migration[7.0]
  def change
    create_table :repetions do |t|
      t.integer :reps
      t.integer :weight
      t.references :workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
