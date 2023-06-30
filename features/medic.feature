Feature: medic
  As a system user
  I want to create, remove, view and edit medics
  So that keep hospital medics data updated

  Scenario: list all medics
    Given Open the medic 'index' page
    Then I see every medic name in the system

  Scenario: edit a medic
    Given Open the medic page
    When I click on the 'Editar' link
    Then I see that i can edit medic
