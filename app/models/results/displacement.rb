class Results::Displacement < ApplicationRecord
  belongs_to :node, class_name: 'PrimitiveTypes::Node'
end

# == Schema Information
#
# Table name: results_displacements
#
#  id         :bigint           not null, primary key
#  dx         :decimal(, )
#  dy         :decimal(, )
#  dz         :decimal(, )
#  rx         :decimal(, )
#  ry         :decimal(, )
#  rz         :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  node_id    :bigint           not null
#
# Indexes
#
#  index_results_displacements_on_node_id  (node_id)
#
# Foreign Keys
#
#  fk_rails_...  (node_id => primitive_types_nodes.id)
#
