class PrimitiveTypes::Beam < ApplicationRecord
  belongs_to :start_node, class_name: 'Node'
  belongs_to :end_node, class_name: 'Node'
end

# == Schema Information
#
# Table name: primitive_types_beams
#
#  id            :bigint           not null, primary key
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  end_node_id   :bigint           not null
#  start_node_id :bigint           not null
#
# Indexes
#
#  index_primitive_types_beams_on_end_node_id    (end_node_id)
#  index_primitive_types_beams_on_start_node_id  (start_node_id)
#
# Foreign Keys
#
#  fk_rails_...  (end_node_id => primitive_types_nodes.id)
#  fk_rails_...  (start_node_id => primitive_types_nodes.id)
#
