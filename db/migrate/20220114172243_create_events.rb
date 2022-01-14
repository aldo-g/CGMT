class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :organizer
      t.date :date
      t.string :desription
      t.string :image
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
