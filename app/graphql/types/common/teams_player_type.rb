module Types
  module Common
    class TeamsPlayerType < Types::BaseObject
      graphql_name 'TeamsPlayer'
      description 'TeamsPlayer object type'

      field :id, ID, null: false
      field :user, Types::Common::UserType
      field :team, Types::Common::TeamType
      field :number, String

    end
  end
end