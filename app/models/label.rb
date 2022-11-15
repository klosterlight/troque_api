class Label < ApplicationRecord
  has_many :product_labels
  has_many :products, through: :product_labels
end
