class AddUserIdToHosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :hosts, :user, null: false, foreign_key: true
  end 
end
