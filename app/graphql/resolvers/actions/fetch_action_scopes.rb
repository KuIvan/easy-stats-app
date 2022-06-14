module Resolvers
  module Actions
    class FetchActionScopes < Resolvers::BaseQuery

      type Types::Enums::Action::ActionScope, null: false

      def resolve
        Action.scopes
      end

    end
  end
end
