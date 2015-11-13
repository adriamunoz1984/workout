class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :feast
      t.string  :name
      t.integer :protein
      t.integer :carbohydrates
      t.integer :fat
      t.integer :calories
      t.string  :notes
      t.datetime :date
      
      t.references :nutrition, index: true
      t.timestamps null: false
    end
  end
end
