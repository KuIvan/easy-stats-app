module Types
  module Common
    class TeamType < Types::BaseObject
      graphql_name 'Team'
      description 'Team object type'

      include Rails.application.routes.url_helpers

      field :id, ID, null: false
      field :name, String, null: false
      field :team_photo, String, null: true
      field :seasons_squads, Types::Common::SeasonsSquadType, null: false

      def team_photo
        object.team_photo.url
      end

    end
  end
end