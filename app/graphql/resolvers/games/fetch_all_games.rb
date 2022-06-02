module Resolvers
  module Games
    class FetchAllGames < Resolvers::BaseQuery

      argument :pagination, Types::Input::Common::PaginationType, required: true

      type [Types::Common::GameType], null: true

      def resolve(pagination:)
        paginate(Game.all, pagination)
      end
    end
  end
end