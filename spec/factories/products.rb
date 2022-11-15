FactoryBot.define do
  factory :product do
    name { FFaker::Product.product_name }
    description { FFaker::Lorem.phrase }
    status { :pending }
    images { [
      Rack::Test::UploadedFile.new(File.join(Rails.root.join('spec/fixtures/starlink.jpeg')), 'image/jpeg'),
      Rack::Test::UploadedFile.new(File.join(Rails.root.join('spec/fixtures/starlink_2.jpeg')), 'image/jpeg')
    ] }
  end
end
