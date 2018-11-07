class CreateArticuloImages < ActiveRecord::Migration[5.1]
  def change
    create_table :articulo_images do |t|
      t.references :articulo, foreign_key: true

      t.timestamps
    end
  end
end
