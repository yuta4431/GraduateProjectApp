class CreatePrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :programs do |t|
      t.string :title, null: false
      t.string :host_name
      t.string :channel
      t.string :day_of_week, null: false
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
    add_index :programs, [:title, :channel], unique: true
  end
end
