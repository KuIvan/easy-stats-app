module Resolvers
  module Games
    class FetchGames < Resolvers::BaseQuery

      argument :pagination, Types::Input::Common::PaginationType, required: true

      type Types::Common::GameType.connection_type, null: false

      def resolve(pagination:)
        context = ::Games::Search.call({ user: current_user })
        paginate(context.games, pagination)
      end

    end
  end
end