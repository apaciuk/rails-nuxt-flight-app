# frozen_string_literal: true

class RegistrationSerializer < ActiveModel::Serializer
  include ActiveModel::Serializer
  attributes :first_name, :last_name, :email
end
