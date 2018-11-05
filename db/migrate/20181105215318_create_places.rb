class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :title
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
