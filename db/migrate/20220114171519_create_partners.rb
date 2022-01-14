class CreatePartners < ActiveRecord::Migration[6.1]
  def change
    create_table :partners do |t|
      t.string :organisation_name
      t.string :organisation_description
      t.string :link_url
      t.string :image

      t.timestamps
    end
  end
end
