class CreateGeometryPoints < ActiveRecord::Migration[7.1]
  def change
    create_table :geometry_points do |t|
      t.decimal :x
      t.decimal :y
      t.decimal :z
      t.references :node, foreign_key: { to_table: :members_nodes }

      t.timestamps
    end
  end
end
