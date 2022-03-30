class CreateInnovationGrants < ActiveRecord::Migration[6.1]
  def change
    create_table :innovation_grants do |t|
      t.string :project_name
      t.string :organisation_name
      t.text :project_description
      t.integer :year_awarded
      t.string :link_url

      t.timestamps
    end
  end
end
