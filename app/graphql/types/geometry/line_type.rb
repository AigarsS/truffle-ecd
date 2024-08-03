# frozen_string_literal: true

module Types
  class Geometry::LineType < Types::BaseObject
    field :id, ID, null: false
    field :start_point_id, Integer, null: false
    field :end_point_id, Integer, null: false
  end
end
