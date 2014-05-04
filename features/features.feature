Feature: Completed week 2 HW

  Scenario: Adopt one puppy
    Given I'm on puppy homepage
    When I click View Details
    And I click Adopt Me
    And I click Complete the Adoption
    And I enter my details and click Place Order
    Then I have adopted a puppy

  Scenario: Adopting two puppies
    Given I'm on puppy homepage
    When I click View Details
    And I click Adopt Me
    And I click Adopt Another Puppy
    And I click View Details Hanna
    And I click Adopt Me
    And I click Complete the Adoption
    And I enter my details and click Place Order
    Then I have adopted a puppy

  Scenario: Adopting three puppies
    Given I'm on puppy homepage
    When I click View Details
    And I click Adopt Me
    And I click Adopt Another Puppy
    And I click View Details Hanna
    And I click Adopt Me
    And I click Adopt Another Puppy
    And I click View Details Ruby
    And I click Adopt Me
    And I click Complete the Adoption
    And I enter my details and click Place Order
    Then I have adopted a puppy

  Scenario: Verifying two puppies in cart
    Given I'm on puppy homepage
    When I click View Details
    And I click Adopt Me
    And I click Adopt Another Puppy
    And I click View Details Hanna
    And I click Adopt Me
    Then "Brook" is in item 1
    And "Hanna" is in item 2

  Scenario: Homepage is right
    Given I'm on puppy homepage
    Then Left menu are displayed
    And Logo displayed