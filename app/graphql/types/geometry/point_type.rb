# frozen_string_literal: true

module Types
  class Geometry::PointType < Types::BaseObject
    field :id, ID, null: false
    field :x, Float
    field :y, Float
    field :z, Float
    field :node, Members::NodeType
    field :lines_as_start_point, [Geometry::LineType], null: true
    field :lines_as_end_point, [Geometry::LineType], null: true
  end
end
