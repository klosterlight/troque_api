FactoryBot.define do
  factory :product_label do
    product { build(:product) }
    label { build(:label) }
  end
end
