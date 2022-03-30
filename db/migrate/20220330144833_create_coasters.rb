class CreateCoasters < ActiveRecord::Migration[6.1]
  def change
    create_table :coasters do |t|
      t.integer :quanity
      t.string :address
      t.float :latitude
      t.float :longitude
      t.date :date

      t.timestamps
    end
  end
end
