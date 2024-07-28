class CreateCoordinatesPoints < ActiveRecord::Migration[7.1]
  def change
    create_table :coordinates_points do |t|
      t.integer :x
      t.integer :y
      t.integer :z
      t.references :node, null: false, foreign_key: { to_table: :primitive_types_nodes }

      t.timestamps
    end
  end
end
