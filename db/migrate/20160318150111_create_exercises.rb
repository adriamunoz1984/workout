class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :notes
      t.belongs_to :training, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
