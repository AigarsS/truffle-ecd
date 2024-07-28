# frozen_string_literal: true

module Types
  class Coordinates::PointType < Types::BaseObject
    field :id, ID, null: false
    field :x, Integer
    field :y, Integer
    field :z, Integer
    field :primitive_types_node_id, Integer, null: false
  end
end
