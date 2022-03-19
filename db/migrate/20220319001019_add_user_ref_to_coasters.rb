class AddUserRefToCoasters < ActiveRecord::Migration[6.1]
  def change
    add_reference :coasters, :user, foreign_key: true
  end
end
