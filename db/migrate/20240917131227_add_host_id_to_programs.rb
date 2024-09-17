class AddHostIdToPrograms < ActiveRecord::Migration[7.0]
  def change
    add_column :programs, :host_id, :integer
    add_foreign_key :programs, :hosts
  end
end
