class CreateReps < ActiveRecord::Migration
  def change
    create_table :reps do |t|
      t.integer :weight
      t.integer :numreps

      t.references :wosets, index: true
      t.timestamps null: false
    end
  end
end
