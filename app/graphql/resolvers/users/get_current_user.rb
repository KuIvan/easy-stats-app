module Resolvers
  module Users
    class GetCurrentUser < Resolvers::BaseQuery

      type Types::Common::UserType, null: true

      def resolve
        User.find(current_user.id)
      end
    end
  end
end
