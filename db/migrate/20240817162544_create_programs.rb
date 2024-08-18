class CreatePrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :programs do |t|
      t.string :name, null: false
      t.string :channel, null: false
      t.datetime :date_and_time
      t.references :host, null: false, foreign_key: true

      t.timestamps
    end
  end
end
