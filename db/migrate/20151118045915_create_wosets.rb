class CreateWosets < ActiveRecord::Migration
  def change
    create_table :wosets do |t|

      t.integer :numsets
      t.references :exercises, index: true
      t.timestamps null: false
    end
  end
end
