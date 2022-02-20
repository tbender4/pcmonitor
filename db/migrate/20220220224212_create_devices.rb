class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :hostname

      t.timestamps
    end
  end
end
