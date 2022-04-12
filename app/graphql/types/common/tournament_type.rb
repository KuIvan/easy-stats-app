module Types
  module Common
    class TournamentType < Types::BaseObject
      graphql_name 'Tournament'
      description 'Tournament object type'

      field :id, ID, null: false
      field :name, String, null: false

    end
  end
end
