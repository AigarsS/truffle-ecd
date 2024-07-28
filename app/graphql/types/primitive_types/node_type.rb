# frozen_string_literal: true

module Types
  class PrimitiveTypes::NodeType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :coordinate, Coordinates::PointType
    field :displacements, [Results::DisplacementType]
    field :reactions, [Results::ReactionType]
  end
end
