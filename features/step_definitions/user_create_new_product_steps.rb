Given('I\'m logged in as a user') do
  # TODO: There are no users atm
end

Given('I want to create a valid product') do
  @product_attributes = {
    product: FactoryBot.attributes_for(:product)
  }
end

When('I POST it to \/products') do
  post v1_products_path, @product_attributes
  @response_data = JSON.parse(last_response.body)
end

Then('I should receive status {int}') do |http_status|
  expect(last_response.status).to eq http_status
end

Then('the new product should be created') do
  expect(Product.count).to eq 1
end

Given('I want to create a product without name') do
  @product_attributes = {
    product: FactoryBot.attributes_for(:product, name: "")
  }
end

Then('I should receive an error message {string}') do |error_message|
  expect(@response_data["messages"]).to include(error_message)
end

Then('the new product should not be created') do
  expect(Product.count).to eq 0
end

Given('I want to create a product without images') do
  @product_attributes = {
    product: FactoryBot.attributes_for(:product, images: [])
  }
end

Given('I want to create a product without labels') do
  pending # Write code here that turns the phrase above into concrete actions
end
