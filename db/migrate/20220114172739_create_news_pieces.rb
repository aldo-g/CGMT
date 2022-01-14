class CreateNewsPieces < ActiveRecord::Migration[6.1]
  def change
    create_table :news_pieces do |t|
      t.string :title
      t.string :description
      t.string :text
      t.string :image
      t.date :date
      t.boolean :pinned

      t.timestamps
    end
  end
end
