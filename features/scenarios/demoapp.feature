Feature: Online Banking


  Scenario: Login into online banking site with valid credentials
    Given I am on the login page
    When  I fill in user id
    And   I fill in password
    And   I submit login button
    Then  I should be on the users home page
    #And   I should see "Login Sucessful"


