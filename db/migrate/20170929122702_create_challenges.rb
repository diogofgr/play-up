class CreateChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :challenges do |t|
      t.string :description
      t.boolean :is_done

      t.timestamps
    end
  end
end
