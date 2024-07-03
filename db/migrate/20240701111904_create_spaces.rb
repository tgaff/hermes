class CreateSpaces < ActiveRecord::Migration[7.2]
  def change
    create_table :spaces do |t|
      t.string :name, null: false
      t.references :tenant, null: false, foreign_key: true
      t.references :created_by, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
