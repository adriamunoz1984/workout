class CreateNutritions < ActiveRecord::Migration
  def change
    create_table :nutritions do |t|
      t.string  :name
     
      t.datetime :date

      t.timestamps null: false
    end
  end
end
