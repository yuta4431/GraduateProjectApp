class RenameHostNameToNameInHosts < ActiveRecord::Migration[7.0]
  def change
    rename_column :hosts, :host_name, :name
  end
end
