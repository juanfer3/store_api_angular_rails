class ArticuloImageSerializer < ActiveModel::Serializer
  attributes :id
  has_one :articulo
end
