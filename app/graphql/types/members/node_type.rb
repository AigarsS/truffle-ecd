# frozen_string_literal: true

module Types
  class Members::NodeType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :point, Geometry::PointType
  end
end
