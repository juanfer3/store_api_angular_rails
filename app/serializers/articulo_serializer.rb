class ArticuloSerializer < ActiveModel::Serializer
  attributes :id, :nombre, :descripcion, :precio, :cantidad
  has_one :categoria
end
