class CreateApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :applications do |t|
      t.string :type
      t.string :email
      t.string :name
      t.string :organisation
      t.string :text

      t.timestamps
    end
  end
end
