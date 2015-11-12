class CreateNutritions < ActiveRecord::Migration
  def change
    create_table :nutritions do |t|
      t.string  :name
      t.integer :protein
      t.integer :carbohydrates
      t.integer :fat
      t.integer :calories
      t.string  :notes

      t.timestamps null: false
    end
  end
end
