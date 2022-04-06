module Resolvers
  module Users
    class FetchUsers < Resolvers::BaseQuery

      argument :name, String, required: false, default_value: nil

      type [Types::Common::UserType], null: false
      # type Types::Common::UserType.connection_type, null: false

      def resolve(name:)
        User.where(name: name)
      end

    end
  end
end