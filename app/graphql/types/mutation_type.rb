module Types
  class MutationType < Types::BaseObject
    # NOTE: we may will want to split it to field groups (assets, users, etc...)

    # Users
    field :update_user, mutation: Mutations::Users::UpdateUser
    # Actions
    field :add_action, mutation: Mutations::Actions::AddAction
    field :remove_action, mutation: Mutations::Actions::RemoveAction

  end
end
