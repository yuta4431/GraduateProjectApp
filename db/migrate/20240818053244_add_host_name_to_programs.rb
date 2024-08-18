class AddHostNameToPrograms < ActiveRecord::Migration[7.0]
  def change
    add_column :programs, :host_name, :string
  end
end
