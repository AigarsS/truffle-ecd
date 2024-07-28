class CreateResultsDisplacements < ActiveRecord::Migration[7.1]
  def change
    create_table :results_displacements do |t|
      t.decimal :dx
      t.decimal :dy
      t.decimal :dz
      t.decimal :rx
      t.decimal :ry
      t.decimal :rz
      t.references :node, null: false, foreign_key: { to_table: :primitive_types_nodes }

      t.timestamps
    end
  end
end
