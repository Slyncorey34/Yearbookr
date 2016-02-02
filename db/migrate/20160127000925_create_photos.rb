class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :caption
      t.text :note

      t.timestamps null: false
    end
  end
end
