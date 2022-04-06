module Resolvers
  module Federations
    class FetchFederations < Resolvers::BaseQuery

      type Types::Common::FederationType.connection_type, null: false

      def resolve
        Federation.all
      end

    end
  end
end