# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
first_node = Members::Node.find_or_create_by!(name: "First node")
start_point = Geometry::Point.find_or_create_by!(node: first_node, x: 0, y: 0, z: 0)

second_node = Members::Node.find_or_create_by!(name: "Second node")
end_point = Geometry::Point.find_or_create_by!(node: second_node, x: 1000, y: 1000, z: 1000)

Geometry::Line.find_or_create_by(start_point: start_point, end_point: end_point)

# Results::Displacement.find_or_create_by(node: first_node, dx: 0, dy: 0, dz: 5000)
# Results::Reaction.find_or_create_by(node: first_node, fx: 0, fy: 0, fz: 10000)

