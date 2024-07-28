# frozen_string_literal: true

module Types
  class Results::ReactionType < Types::BaseObject
    field :id, ID, null: false
    field :fx, Float
    field :fy, Float
    field :fz, Float
    field :mx, Float
    field :my, Float
    field :mz, Float
    field :primitive_types_node_id, Integer, null: false
  end
end
