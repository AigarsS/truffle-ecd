class CreateMembersBeams < ActiveRecord::Migration[7.1]
  def change
    create_table :members_beams do |t|
      t.string :name

      t.timestamps
    end
  end
end
