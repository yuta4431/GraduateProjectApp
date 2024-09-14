class AddProgramIdToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :program_id, :integer
    add_foreign_key :posts, :programs, column: :program_id
  end
end
