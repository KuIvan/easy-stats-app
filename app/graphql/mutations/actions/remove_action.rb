module Mutations
  module Actions
    class RemoveAction < Mutations::BaseMutation

      argument :params, Types::Input::Action::RemoveType, required: true

      field :action, Types::Common::ActionType, null: false

      def resolve(params:)
        action_params = params.to_h

        action = Action.find(action_params[:id])

        raise GraphQL::ExecutionError, 'Wrong arguments' if action.blank?

        action.destroy

        { action: action }
      end

    end
  end
end