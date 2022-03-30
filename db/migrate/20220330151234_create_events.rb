class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :organizer
      t.date :date
      t.text :description
      t.string :image_url
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
