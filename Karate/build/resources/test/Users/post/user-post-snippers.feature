@ignore
Feature: Reusable scenarios for post user


  @Create
  Scenario:
    Given url "https://reqres.in/api/users/"
    And request {"name": "Alejandro", "job": "Qassure"}
    When method post
    Then status 201
    And def contactId = $.id