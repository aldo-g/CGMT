class AddUserRefToPartners < ActiveRecord::Migration[6.1]
  def change
    add_reference :partners, :user, foreign_key: true
  end
end
