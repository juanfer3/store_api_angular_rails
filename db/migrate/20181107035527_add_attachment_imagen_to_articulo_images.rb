class AddAttachmentImagenToArticuloImages < ActiveRecord::Migration[5.1]
  def self.up
    change_table :articulo_images do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :articulo_images, :imagen
  end
end
