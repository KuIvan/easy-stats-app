module Types
  module Common
    class FederationType < Types::BaseObject
      graphql_name 'Federation'
      description 'Federation object type'

      field :id, ID, null: false
      field :name, String, null: false

    end
  end
end
