class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.date :broadcast_date, null: false
      t.text :content

      t.timestamps
    end
  end
end
