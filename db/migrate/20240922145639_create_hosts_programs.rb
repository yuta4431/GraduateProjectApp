class CreateHostsPrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :hosts_programs do |t|
      t.references :host, null: false, foreign_key: true
      t.references :program, null: false, foreign_key: true

      t.timestamps
    end
  end
end
