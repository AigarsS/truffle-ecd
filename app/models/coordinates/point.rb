class Coordinates::Point < ApplicationRecord
  belongs_to :node, class_name: 'PrimitiveTypes::Node'
end

# == Schema Information
#
# Table name: coordinates_points
#
#  id         :bigint           not null, primary key
#  x          :integer
#  y          :integer
#  z          :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  node_id    :bigint           not null
#
# Indexes
#
#  index_coordinates_points_on_node_id  (node_id)
#
# Foreign Keys
#
#  fk_rails_...  (node_id => primitive_types_nodes.id)
#
