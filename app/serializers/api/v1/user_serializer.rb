# frozen_string_literal: true

class Api::V1::UserSerializer < Api::V1::BaseSerializer
  attributes :id, :email

  def attributes *attrs
    super.slice(*fields_custom[:users])
  end

  ROOT = {
    users: %i[id email]
  }.freeze
end