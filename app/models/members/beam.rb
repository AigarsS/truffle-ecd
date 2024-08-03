class Members::Beam < ApplicationRecord
  has_many :lines, class_name: 'Geometry::Line', dependent: :nullify
end

# == Schema Information
#
# Table name: members_beams
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
