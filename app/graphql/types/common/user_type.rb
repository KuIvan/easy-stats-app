module Types
  module Common
    class UserType < Types::BaseObject
      graphql_name 'User'
      description 'User object type'

      field :id, ID, null: false
      field :full_name, String, null: true

      field :name, String, null: false
      field :created_at, GraphQL::Types::ISO8601DateTime, null: false
      field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

      def full_name
        "#{object.last_name} #{object.first_name}"
      end

    end
  end
end
