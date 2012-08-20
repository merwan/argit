Feature: Argit save work as intended
  As an artist who wants to save the state of my current Ardour project
  When I save my project with argit
  The project is saved

  Background:
    Given my terminal size is "80x24"
    And I run `argit init`
    And an empty file named "test.ardour"

  @announce
  Scenario: Save saves current Ardour project file
    When I run `argit save`
    Then the exit status should be 0
    And the git repository should contain "test.ardour"
    And the output should contain:
    """
    Saving current project

    """

