Feature: A user can view all of his/her products

Scenario: A user gets all of his/her products
  Given That I have 10 products
  When I GET all /products
  Then I should receive status 200
    And I should see all the products
    And I should see the labels they belong to
    And I should see the collection paginated
