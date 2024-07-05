class CreateChannels < ActiveRecord::Migration[7.2]
  def change
    create_table :channels do |t|
      t.string :name, null: false
      t.references :channel_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
