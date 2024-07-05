class CreateChannelGroups < ActiveRecord::Migration[7.2]
  def change
    create_table :channel_groups do |t|
      t.string :name, null: false
      t.references :space, null: false, foreign_key: true

      t.timestamps
    end
  end
end
