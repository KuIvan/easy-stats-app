module Mutations
  module Users
    class UpdateUser < Mutations::BaseMutation

      argument :params, Types::Input::User::UpdateType, required: true

      field :user, Types::Common::UserType, null: false

      def resolve(params:)
        user_params = params.to_h

        # NOTE: Pundit method will be add later
        # authorize current_user, :update?

        # NOTE: Potential new interactor for updating user
        user = User.find(user_params[:id])
        user.update!(user_params)

        { user: user }
      end

    end
  end
end
