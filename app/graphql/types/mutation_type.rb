module Types
  class MutationType < Types::BaseObject
    # NOTE: we may will want to split it to field groups (assets, users, etc...)

    # Users
    field :update_user, mutation: Mutations::Users::UpdateUser

  end
end
