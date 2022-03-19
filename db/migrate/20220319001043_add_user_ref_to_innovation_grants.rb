class AddUserRefToInnovationGrants < ActiveRecord::Migration[6.1]
  def change
    add_reference :innovation_grants, :user, foreign_key: true
  end
end
