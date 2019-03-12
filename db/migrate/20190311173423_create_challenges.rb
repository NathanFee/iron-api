class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :challenge_name, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end
