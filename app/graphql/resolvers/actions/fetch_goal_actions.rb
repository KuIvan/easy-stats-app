module Resolvers
  module Actions
    class FetchGoalActions < Resolvers::BaseQuery

      type [Types::Common::ActionType], null: false

      argument :user_id, ID, required: true

      argument :goals, Boolean, required: false, default_value: false
      argument :assist, Boolean, required: false, default_value: false
      argument :yellow_card, Boolean, required: false, default_value: false
      argument :red_card, Boolean, required: false, default_value: false

      # argument :goals, Boolean, required: false, default_value: false
      # argument :assists, Boolean, required: false, default_value: false
      # argument :red_card, Boolean, required: false, default_value: false
      # argument :yellow_card, Boolean, required: false, default_value: false

      def resolve(user_id:, goals:, assist:, yellow_card:, red_card:)

        user_player = GamesSquadsPlayer.find_by(user_id: user_id)
        puts user_player.inspect

        result = ::Actions::Search.call({ user_player_id: user_player.id, goals: goals, assist: assist, yellow_card: yellow_card, red_card: red_card}) if user_player.present?

        raise GraphQL::ExecutionError, 'Error' unless result.success?

        result.actions

      end

    end
  end
end