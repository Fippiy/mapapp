class CreateRoutePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :route_photos do |t|

      t.timestamps
    end
  end
end
