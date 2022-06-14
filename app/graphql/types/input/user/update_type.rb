module Types
  module Input
    module User
      class UpdateType < Types::BaseInputObject
        # NOTE: we must get id if admin can update user, if not it will be current_user
        argument :id, ID, 'ID user', required: true
        argument :first_name, String, required: false
        argument :last_name, String, required: false
      end
    end
  end
end
