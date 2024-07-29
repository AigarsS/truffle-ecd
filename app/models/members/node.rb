class Members::Node < ApplicationRecord
  has_one :point, class_name: 'Geometry::Point'
end

# == Schema Information
#
# Table name: members_nodes
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
