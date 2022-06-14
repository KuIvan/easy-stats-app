module Types
  module Connection
    class UserEdgeType < GraphQL::Types::Relay::BaseEdge
      node_type(Types::Common::UserType)
    end

    class UserConnection < GraphQL::Types::Relay::BaseConnection

      # field :total_count, Integer, null: false
      #
      # def total_count
      #   context[:total_count]
      # end

      edge_type(UserEdgeType)
    end
  end
end