module Resolvers
  module Users
    class FetchUsers < Resolvers::BaseQuery

      type Types::Common::UserType.connection_type, null: false

      def resolve
        User.all
      end

    end
  end
end