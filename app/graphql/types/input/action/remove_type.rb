module Types
  module Input
    module Action
      class RemoveType < Types::BaseInputObject
        argument :id, ID, 'ID Action', required: true
      end
    end
  end
end
