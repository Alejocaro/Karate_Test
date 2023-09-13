Feature: Post user on reqres

  Background:
    * url "https://reqres.in/"
    * path "/api/users"
    * request {"name": "#(name)", "job": "#(job)"}

  Scenario Outline: Post a user
    When method post
    Then status 400

      Examples:
        | name      | job     |
        | Alejandro | QA      |
        | Carlos    | Doctor  |
        | Pedro     | Teacher |

  Scenario: Post a user
    Given url "https://reqres.in/" + "/api/users/"
    And request {"name": "Alejandro", "job": "Qassure"}
    When method post
    Then status 201

  Scenario: Post a user
    Given url "https://reqres.in/" + "/api/users/"
    And request {"name": "Alejandro"}
    When method post
    Then status 201

  Scenario: Post a user
    Given url "https://reqres.in/" + "/api/users/"
    And request {"name": "$%&%", "job": "Qassure"}
    When method post
    Then status 201