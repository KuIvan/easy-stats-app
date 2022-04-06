module Types
  module Connection
    class FederationEdgeType < GraphQL::Types::Relay::BaseEdge
      node_type(Types::Common::FederationType)
    end

    class FederationConnection < GraphQL::Types::Relay::BaseConnection

      edge_type(FederationEdgeType)
    end
  end
end