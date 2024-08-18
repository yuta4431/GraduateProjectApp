class RemoveHostIdFromPrograms < ActiveRecord::Migration[7.0]
  def change
    remove_column :programs, :host_id, :integer
  end
end
