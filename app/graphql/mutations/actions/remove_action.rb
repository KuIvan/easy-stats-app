module Mutations
  module Actions
    class RemoveAction < Mutations::BaseMutation

      argument :params, Types::Input::Action::RemoveType, required: true

      field :action, Types::Common::ActionType, null: false

      def resolve(params:)
        action_params = params.to_h

        action = Action.find(action_params[:id])

        team_player = GamesSquadsPlayer.find(action.initiator_id).teams_player

        if team_player.present?
          team_player.decrement!(:goals_count, by = 1) if action.scope == 'goal'
          team_player.decrement!(:assists_count, by = 1) if action.scope == 'assist'
          team_player.decrement!(:yellow_cards_count, by = 1) if action.scope == 'yellow_card'
          team_player.decrement!(:red_cards_count, by = 1) if action.scope == 'red_card'
        end

        raise GraphQL::ExecutionError, 'Wrong arguments' if action.blank?

        action.destroy

        { action: action }
      end

    end
  end
end