class CreateCoordinatesPoints < ActiveRecord::Migration[7.1]
  def change
    create_table :coordinates_points do |t|
      t.integer :x
      t.integer :y
      t.integer :z
      t.references :primitive_types_node, null: false, foreign_key: true

      t.timestamps
    end
  end
end
