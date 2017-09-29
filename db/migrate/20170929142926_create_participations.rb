class CreateParticipations < ActiveRecord::Migration[5.0]
  def change
    create_table :challenges_users, id: false do |t|
      t.integer :user_id, null: false
      t.integer :challenge_id, null: false

      t.timestamps
    end
  end
end
