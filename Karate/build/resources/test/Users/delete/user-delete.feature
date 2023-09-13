
Feature: Delete user on reqres

  Scenario: Delete a use
    * call read("../post/user-post-snippers.feature@Create")
    Given url "https://reqres.in/" + "/api/users/" + contactId
    When method delete
    Then status 204