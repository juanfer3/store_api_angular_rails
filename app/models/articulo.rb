class Articulo < ApplicationRecord
  belongs_to :categoria

  has_many :articulo_images , inverse_of: :articulo, dependent: :destroy
  accepts_nested_attributes_for :articulo_images, reject_if: :all_blank, allow_destroy: true

end
