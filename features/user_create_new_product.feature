Feature: The user can create a new product
    A product is each of the offers that the user uploads to the app
    That he/she wants to trade

Scenario: The user succesfully creates a new product to trade
  Given I'm logged in as a user
    And I want to create a valid product
  When I POST it to /products
  Then I should receive status 201
    And the new product should be created

Scenario: The user cannot create a new product without name
  Given I'm logged in as a user
    And I want to create a product without name
  When I POST it to /products
  Then I should receive status 422
    And I should receive an error message "Name can't be blank"
    And the new product should not be created

Scenario: The user cannot create a new product with images
  Given I'm logged in as a user
    And I want to create a product without images
  When I POST it to /products
  Then I should receive status 422
    And I should receive an error message "Images can't be blank"
    And the new product should not be created

Scenario: The user cannot create a new product without labels, at least one
  Given I'm logged in as a user
    And I want to create a product without labels
  When I POST it to /products
  Then I should receive status 422
    And I should receive an error message ""
    And the new product should not be created
