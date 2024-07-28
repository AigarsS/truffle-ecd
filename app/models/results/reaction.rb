class Results::Reaction < ApplicationRecord
  belongs_to :node, class_name: 'PrimitiveTypes::Node'
end

# == Schema Information
#
# Table name: results_reactions
#
#  id         :bigint           not null, primary key
#  fx         :decimal(, )
#  fy         :decimal(, )
#  fz         :decimal(, )
#  mx         :decimal(, )
#  my         :decimal(, )
#  mz         :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  node_id    :bigint           not null
#
# Indexes
#
#  index_results_reactions_on_node_id  (node_id)
#
# Foreign Keys
#
#  fk_rails_...  (node_id => primitive_types_nodes.id)
#
