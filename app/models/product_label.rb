class ProductLabel < ApplicationRecord
  belongs_to :product
  belongs_to :label
end
