class Geometry::Line < ApplicationRecord
  belongs_to :start_point, class_name: 'Point'
  belongs_to :end_point, class_name: 'Point'
end

# == Schema Information
#
# Table name: geometry_lines
#
#  id             :bigint           not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  end_point_id   :bigint           not null
#  start_point_id :bigint           not null
#
# Indexes
#
#  index_geometry_lines_on_end_point_id    (end_point_id)
#  index_geometry_lines_on_start_point_id  (start_point_id)
#
# Foreign Keys
#
#  fk_rails_...  (end_point_id => geometry_points.id)
#  fk_rails_...  (start_point_id => geometry_points.id)
#
