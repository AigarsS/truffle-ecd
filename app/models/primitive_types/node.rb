class PrimitiveTypes::Node < ApplicationRecord
  has_one :coordinate, class_name: 'Coordinates::Point'
  has_many :displacements, class_name: 'Results::Displacement'
  has_many :reactions, class_name: 'Results::Reaction'
  has_many :beams_as_starting_node, class_name: 'Beam', foreign_key: 'start_node'
  has_many :beams_as_ending_node, class_name: 'Beam', foreign_key: 'end_node'
end

# == Schema Information
#
# Table name: primitive_types_nodes
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
