Given('That I have {int} products') do |amount|
  @products = FactoryBot.create_list :product, amount
end

When('I GET all \/products') do
  get v1_products_path
  @response_data = JSON.parse(last_response.body)
end

Then('I should see all the products') do
  expect(@products.map(&:id)).to match_array @response_data["data"].map { |e| e["id"] }
end

Then('I should see the labels they belong to') do
  binding.pry
  product = Product.find @response_data["data"][0]["id"]
  label = product.labels.first
  expect(@response_data["data"][0]["labels"][0]["name"]).to eq label.name
end
