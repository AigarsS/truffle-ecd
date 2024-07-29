class CreateMembersNodes < ActiveRecord::Migration[7.1]
  def change
    create_table :members_nodes do |t|
      t.string :name

      t.timestamps
    end
  end
end
