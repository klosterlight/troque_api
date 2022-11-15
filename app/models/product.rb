class Product < ApplicationRecord
  has_many_attached :images
  has_many :product_labels
  has_many :labels, through: :product_labels

  validates_presence_of :name

  validates :images, attached: true

  enum status: [:pending, :published]
end
