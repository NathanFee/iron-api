# frozen_string_literal: true

class AddUserToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_reference :challenges, :user, foreign_key: true
  end
end
