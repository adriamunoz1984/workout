class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.datetime :date
      t.string :name
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
