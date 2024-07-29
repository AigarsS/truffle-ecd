class Geometry::Point < ApplicationRecord
  belongs_to :node, class_name: 'Members::Node'

  has_many :lines_as_start_point, class_name: 'Line', foreign_key: 'start_point'
  has_many :lines_as_end_point, class_name: 'Line', foreign_key: 'end_point'
end

# == Schema Information
#
# Table name: geometry_points
#
#  id         :bigint           not null, primary key
#  x          :decimal(, )
#  y          :decimal(, )
#  z          :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  node_id    :bigint
#
# Indexes
#
#  index_geometry_points_on_node_id  (node_id)
#
# Foreign Keys
#
#  fk_rails_...  (node_id => members_nodes.id)
#
