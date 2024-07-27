class CreateResultsReactions < ActiveRecord::Migration[7.1]
  def change
    create_table :results_reactions do |t|
      t.decimal :fx
      t.decimal :fy
      t.decimal :fz
      t.decimal :mx
      t.decimal :my
      t.decimal :mz
      t.references :primitive_types_node, null: false, foreign_key: true

      t.timestamps
    end
  end
end
