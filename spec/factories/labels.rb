FactoryBot.define do
  factory :label do
    sequence(:name) { |n| "#{FFaker::Color.name}_#{n}"}
    is_active { true }
  end
end
