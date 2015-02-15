class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :email
      t.string :name
      t.string :profile_image_url              
      t.boolean :admin, default: false

      t.timestamps
    end

  end
end
