module Types
  module Common
    class StageType < Types::BaseObject
      graphql_name 'Stage'
      description 'Stage object type'

      field :id, ID, null: false
      field :season, Types::Common::SeasonType, null: false

    end
  end
end
