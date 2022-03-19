class AddUserRefToEvents < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :user, foreign_key: true
  end
end
