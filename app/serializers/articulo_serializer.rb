class ArticuloSerializer < ActiveModel::Serializer
  attributes :id, :nombre, :descripcion, :precio, :cantidad
  has_one :categoria

  has_many :articulo_images , serializer:  ArticuloImageSerializer
end
