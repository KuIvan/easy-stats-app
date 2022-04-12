module Types
  module Common
    class StageType < Types::BaseObject
      graphql_name 'Stage'
      description 'Stage object type'

      field :id, ID, null: false
      field :season, Types::Common::SeasonType, null: false

      def season
        object.season
      end

    end
  end
end
