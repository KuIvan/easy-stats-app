module Types
  module Common
    class TeamsPlayerType < Types::BaseObject
      graphql_name 'TeamsPlayer'
      description 'TeamsPlayer object type'

      field :id, ID, null: false
      field :user, Types::Common::UserType
      field :team, Types::Common::TeamType
      field :number, String
      field :games_count, Int
      field :goals_count , Int
      field :assists_count, Int
      field :yellow_cards_count, Int
      field :red_cards_count, Int

    end
  end
end