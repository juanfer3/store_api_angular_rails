class CategoriaSerializer < ActiveModel::Serializer
  attributes :id, :nombre
  
  has_many :articulos, serializer: ArticuloSerializer
end
