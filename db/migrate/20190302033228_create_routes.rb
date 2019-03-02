class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.references :user, foreign_key: true
      t.string :title,null: false
      t.text :description
      t.timestamps
    end
  end
end
