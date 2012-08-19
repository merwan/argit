Feature: Argit init work as intended
  As an artist who wants to version my Ardour project
  When I initialize my project with argit
  The project is initialized and ready to work

  Background:
    Given my terminal size is "80x24"

  Scenario: Init creates an empty git repository
    When I run `argit init`
    Then the exit status should be 0
    And the output should contain exactly:
    """
    Initializing current folder for Argit

    """
    And the following directories should exist:
      |.git|

