module Types
  module Common
    class SeasonType < Types::BaseObject
      graphql_name 'Season'
      description 'Season object type'

      field :id, ID, null: false
      field :started_at, GraphQL::Types::ISO8601DateTime, null: true
      field :finished_at, GraphQL::Types::ISO8601DateTime, null: true
      field :league, Types::Common::LeagueType, null: false

      # def league
      #   object.league
      # end

    end
  end
end