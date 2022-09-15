class SessionsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email

  attribute :jwt_token do |object|
    JsonWebToken.encode(sub: object.id)
  end
end
