class CreateAirlines < ActiveRecord::Migration[6.1]
  def change
    create_table :airlines do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :image_url
      t.string :slug, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
