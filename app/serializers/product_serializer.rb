class ProductSerializer < ApplicationSerializer
  attributes :name, :description

  has_many :labels
end
