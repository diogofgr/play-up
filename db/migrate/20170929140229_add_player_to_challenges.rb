class AddPlayerToChallenges < ActiveRecord::Migration[5.0]
  def change
    add_column :challenges, :author_id, :integer, null: false
  end
end
