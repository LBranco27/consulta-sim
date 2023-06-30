Feature: patient
  As a system user
  I want to create, remove and edit patient
  So that keep hospital patients data updated

  Scenario: Add a patient
    Given Open the patient 'new' page
    When I fill all fields with valid information
    And I click on 'Create Patient'
    Then I see that this patient was saved

  Scenario: Remove a patient
    Given Open the patient page
    When I click on the 'Deletar' link
    Then I see that this patient was deleted
