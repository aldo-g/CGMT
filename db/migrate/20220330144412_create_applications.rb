class CreateApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :applications do |t|
      t.string :type
      t.string :email
      t.string :organisation
      t.text :text
      t.date :date

      t.timestamps
    end
  end
end
