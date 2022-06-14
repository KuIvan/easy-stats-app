module Resolvers
  module Users
    class GetCurrentUser < Resolvers::BaseQuery

      type Types::Common::UserType, null: true

      def resolve
        raise GraphQL::ExecutionError, 'Current user is empty' if current_user.blank?

        User.find(current_user.id)
      end
    end
  end
end
