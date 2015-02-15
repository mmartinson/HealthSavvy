class CreateHealthyThings < ActiveRecord::Migration
  def change
    create_table :healthy_things do |t|
      t.string :name
      t.integer :value
      t.integer :daily_limit
      t.references :challenge
      t.integer :daily_limit

      t.timestamps null: false
    end
  end
end
