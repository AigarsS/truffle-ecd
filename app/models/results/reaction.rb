class Results::Reaction < ApplicationRecord
  belongs_to :node, class_name: 'PrimitiveTypes::Node', foreign_key: 'primitive_types_node_id'
end
