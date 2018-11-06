class CreateArticulos < ActiveRecord::Migration[5.1]
  def change
    create_table :articulos do |t|
      t.references :categoria, foreign_key: true
      t.string :nombre
      t.string :descripcion
      t.float :precio
      t.float :cantidad

      t.timestamps
    end
  end
end
