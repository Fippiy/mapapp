class CreateRoutePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :route_photos do |t|
      t.text :photo
      t.references :route, foreign_key: true
      t.timestamps
    end
  end
end
