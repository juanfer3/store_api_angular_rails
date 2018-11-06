class Categoria < ApplicationRecord
    has_many :articulos , inverse_of: :categoria, dependent: :destroy
  accepts_nested_attributes_for :articulos, reject_if: :all_blank, allow_destroy: true

end
