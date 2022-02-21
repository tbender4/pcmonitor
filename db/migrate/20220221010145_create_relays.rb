class CreateRelays < ActiveRecord::Migration[6.1]
  def change
    create_table :relays do |t|
      t.string :name
      t.string :mac_address

      t.timestamps
    end
  end
end
