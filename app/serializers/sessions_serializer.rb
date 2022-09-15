# frozen_string_literal: true

class SessionsSerializer < ActiveModel::Serializer
  include ActiveModel::Serializer
  attribute :email

  attribute :jwt_token do |object|
    JsonWebToken.encode(sub: object.id)
  end
end
