class CreateWosets < ActiveRecord::Migration
  def change
    create_table :wosets do |t|
      t.integer :number
      t.integer :weight
      t.integer :reps
      t.text :notes
      t.belongs_to :exercises, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
