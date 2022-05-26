module Mutations
  module Actions
    class AddAction < Mutations::BaseMutation

      argument :params, Types::Input::Action::AddType, required: false

      field :action, Types::Common::ActionType, null: false

      def resolve(params:)
        action_params = params.to_h

        action = Action.new(action_params)
        action.save!

        { action: action }
      end

    end
  end
end