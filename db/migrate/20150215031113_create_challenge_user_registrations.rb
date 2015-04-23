class CreateChallengeUserRegistrations < ActiveRecord::Migration
  def change
    create_table :challenge_user_registrations do |t|
      t.references :user, index: true
      t.references :challenge, index: true

      t.timestamps null: false
    end
    add_foreign_key :challenge_user_registrations, :users
    add_foreign_key :challenge_user_registrations, :challenges
  end
end
