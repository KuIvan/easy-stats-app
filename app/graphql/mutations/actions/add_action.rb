module Mutations
  module Actions
    class AddAction < Mutations::BaseMutation

      argument :params, Types::Input::Action::AddType, required: false

      field :action, Types::Common::ActionType, null: false

      def resolve(params:)
        action_params = params.to_h

        action = Action.new(action_params)
        action.save!

        team_player = GamesSquadsPlayer.find(action.initiator_id).teams_player

        if team_player.present?
          team_player.increment!(:goals_count, by = 1) if action.scope == 'goal'
          team_player.increment!(:assists_count, by = 1) if action.scope == 'assist'
          team_player.increment!(:yellow_cards_count, by = 1) if action.scope == 'yellow_card'
          team_player.increment!(:red_cards_count, by = 1) if action.scope == 'red_card'
        end


        { action: action }
      end

    end
  end
end