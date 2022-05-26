module Types
  module Enums
    module Action
      class ActionScope < Types::BaseEnum
        graphql_name 'ActionScopes'
        description 'Scopes Enum of Action'

        ::Action.scopes.each { |name, index| value name, index }
      end
    end
  end
end
