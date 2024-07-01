class CreateTenantMemberships < ActiveRecord::Migration[7.2]
  def change
    create_table :tenant_memberships do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tenant, null: false, foreign_key: true
      t.boolean :creator, default: false, null: false
      t.boolean :admin, default: false, null: false

      t.timestamps
    end
  end
end
