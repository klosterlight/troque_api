class Product < ApplicationRecord
  include Paginatable

  has_many_attached :images
  has_many :product_labels
  has_many :labels, through: :product_labels

  validates_presence_of :name
  validate :at_least_one_product_label

  validates :images, attached: true

  enum status: [:pending, :published]

  accepts_nested_attributes_for :product_labels

  def at_least_one_product_label
    if product_labels.empty?
      self.errors.add(:base, I18n.t("activerecord.models.product.product_labels.missing"))
    end
  end
end
