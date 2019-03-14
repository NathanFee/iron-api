# frozen_string_literal: true

class ChallengeSerializer < ActiveModel::Serializer
  attributes :id, :challenge_name, :description, :editable

  def editable
    scope == object.user
  end
end
