class PrimitiveTypes::Node < ApplicationRecord
  has_one :coordinate, class_name: 'Coordinates::Point', foreign_key: 'primitive_types_node_id'
  has_many :displacements, class_name: 'Results::Displacement', foreign_key: 'primitive_types_node_id'
  has_many :reactions, class_name: 'Results::Reaction', foreign_key: 'primitive_types_node_id'
end
