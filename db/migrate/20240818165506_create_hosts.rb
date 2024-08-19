class CreateHosts < ActiveRecord::Migration[7.0]
  def change
    create_table :hosts do |t|
      t.string :host_name, null: false, unique: true

      t.timestamps
    end
    add_index :hosts, :host_name, unique: true
  end
end
