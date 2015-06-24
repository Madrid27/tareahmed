class CreateCines < ActiveRecord::Migration
  def change
    create_table :cines do |t|
      t.string :pelicula
      t.text :raiting

      t.timestamps
    end
  end
end
