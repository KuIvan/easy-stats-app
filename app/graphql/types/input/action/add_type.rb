module Types
  module Input
    module Action
      class AddType < Types::BaseInputObject
        argument :initiator_id, ID, required: true
        argument :addressable_id, ID, required: true
        argument :scope, Types::Enums::Action::ActionScope, required: true
        argument :minute, Int, required: false
        argument :is_successful, Boolean, required: false
      end
    end
  end
end
