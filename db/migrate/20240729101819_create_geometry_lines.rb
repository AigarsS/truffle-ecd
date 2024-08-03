class CreateGeometryLines < ActiveRecord::Migration[7.1]
  def change
    create_table :geometry_lines do |t|
      t.references :start_point, null: false, foreign_key: { to_table: :geometry_points }
      t.references :end_point, null: false, foreign_key: { to_table: :geometry_points }
      t.references :beam, foreign_key: { to_table: :members_beams }

      t.timestamps
    end
  end
end
