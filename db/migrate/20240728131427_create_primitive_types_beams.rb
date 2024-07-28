class CreatePrimitiveTypesBeams < ActiveRecord::Migration[7.1]
  def change
    create_table :primitive_types_beams do |t|
      t.string :name
      t.references :start_node, null: false, foreign_key: { to_table: :primitive_types_nodes }
      t.references :end_node, null: false, foreign_key:  { to_table: :primitive_types_nodes }

      t.timestamps
    end
  end
end
