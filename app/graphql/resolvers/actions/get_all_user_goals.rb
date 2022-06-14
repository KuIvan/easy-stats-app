module Resolvers
  module Actions
    class GetAllUserGoals < Resolvers::BaseQuery

      type Types::Common::TeamsPlayerType, null: true

      argument :user_id, ID, required: true

      def resolve(user_id:)
        TeamsPlayer.find_by(user_id: user_id)
      end

    end
  end
end