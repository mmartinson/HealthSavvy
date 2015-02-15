class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :healthy_thing
      t.date :date
      t.integer :value

      t.timestamps null: false
    end
  end
end

