# frozen_string_literal: true

module Types
  class Results::DisplacementType < Types::BaseObject
    field :id, ID, null: false
    field :dx, Float
    field :dy, Float
    field :dz, Float
    field :rx, Float
    field :ry, Float
    field :rz, Float
    field :primitive_types_node_id, Integer, null: false
  end
end
