class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :workout
      t.datetime :date
      t.string :energy
      t.string :length
      t.string :notes

      t.timestamps null: false
    end
  end
end
