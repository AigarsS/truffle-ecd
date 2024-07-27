class CreatePrimitiveTypesNodes < ActiveRecord::Migration[7.1]
  def change
    create_table :primitive_types_nodes do |t|
      t.string :name

      t.timestamps
    end
  end
end
