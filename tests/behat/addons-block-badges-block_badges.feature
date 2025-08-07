@addon_block_badges @app @block @block_badges @javascript
Feature: Basic tests of badges block

  Background:
    Given the following "users" exist:
      | username | firstname | lastname | email | idnumber |
      | student1 | Student | 1 | student1@example.com | S1 |
    And the following "courses" exist:
      | fullname | shortname | category |
      | Course 1 | C1 | 0 |
    And the following "course enrolments" exist:
      | user | course | role |
      | student1 | C1 | student |
    And the following "blocks" exist:
      | blockname | contextlevel | reference | pagetypepattern | defaultregion |
      | badges    | Course       | C1        | course-view-*   | side-pre      |

  Scenario: View and navigate the badges block in a course
    Given I entered the course "Course 1" as "student1" in the app
    When I press "Open block drawer" in the app
    Then I should find "Latest badges" in the app
    And I should find "You have no badges to display" in the app

  Scenario: Block is included in disabled features
    # Add another block just to ensure there is something in the block region and the drawer is displayed.
    Given the following "blocks" exist:
      | blockname        | contextlevel | reference | pagetypepattern | defaultregion | configdata                                                                                                   |
      | html             | Course       | C1        | course-view-*   | side-pre      | Tzo4OiJzdGRDbGFzcyI6Mjp7czo1OiJ0aXRsZSI7czoxNToiSFRNTCB0aXRsZSB0ZXN0IjtzOjQ6InRleHQiO3M6OToiYm9keSB0ZXN0Ijt9 |
    And the following config values are set as admin:
      | disabledfeatures | CoreBlockDelegate_AddonBlockBadges | tool_mobile |
    And  I entered the course "Course 1" as "student1" in the app
    When I press "Open block drawer" in the app
    Then I should not find "Latest badges" in the app
