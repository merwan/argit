Feature: Argit save work as intended
  As an artist who wants to save the state of my current Ardour project
  When I save my project with argit
  The project is saved

  Background:
    Given my terminal size is "80x24"
    And the project is initialized with argit init
    And I have an empty Ardour project file called "test.ardour"

  Scenario: Save saves current Ardour project file
    When I run `argit save`
    Then the exit status should be 0
    And the output should contain exactly:
    """
    Saving current project

    """
    And the git repository contains "test.ardour" file

