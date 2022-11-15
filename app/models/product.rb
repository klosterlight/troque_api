class Product < ApplicationRecord
  validates_presence_of :name

  enum status: [:pending, :published]
end
