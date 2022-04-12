module Types
  module Common
    class LeagueType < Types::BaseObject
      graphql_name 'League'
      description 'League object type'

      field :id, ID, null: false
      field :name, String, null: false
      field :tournament, Types::Common::TournamentType, null: false

      def tournament
        object.tournament
      end

    end
  end
end
