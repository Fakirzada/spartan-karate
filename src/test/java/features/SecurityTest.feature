Feature: API testing for Security Functions

  Scenario: Valid token with valid credentials
    Given url 'https://dev.insurance-api.tekschool-students.com'
    Given path '/api/token'
    Given request
    """
      {
          "username": "supervisor",
          "password": "tek_supervisor"
      }
    """
    When method post
    Then status 200



  Scenario: Valid token with invalid credentials
    Given url 'https://dev.insurance-api.tekschool-students.com'
    Given path '/api/token'
    Given request
    """
      {
          "username": "supervisor1",
          "password": "tek_supervisor2"
      }
    """
    When method post
    Then status 404