class CreateRuta < ActiveRecord::Migration[5.2]
  def change
    create_table :ruta do |t|
      t.string :ruta
      t.float :latitud
      t.float :longitud

      t.timestamps
    end
  end
end
