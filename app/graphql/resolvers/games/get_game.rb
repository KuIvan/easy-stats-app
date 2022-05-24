# frozen_string_literal: true

module Resolvers
  module Games
    class GetGame < Resolvers::BaseQuery

      type Types::Common::GameType, null: true

      argument :id, ID, required: true

      def resolve(id:)
        Game.find(id)
      end
    end
  end
end
