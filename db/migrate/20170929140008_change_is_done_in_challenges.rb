class ChangeIsDoneInChallenges < ActiveRecord::Migration[5.0]
  def change
    change_column :challenges, :is_done, :boolean, :default => false
  end
end
