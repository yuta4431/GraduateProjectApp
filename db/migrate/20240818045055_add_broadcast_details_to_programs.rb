class AddBroadcastDetailsToPrograms < ActiveRecord::Migration[7.0]
  def change
    add_column :programs, :broadcast_day, :string
    add_column :programs, :start_time, :time
    add_column :programs, :end_time, :time
  end
end
