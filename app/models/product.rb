class Product < ApplicationRecord
  has_many_attached :images

  validates_presence_of :name

  validates :images, attached: true

  enum status: [:pending, :published]
end
