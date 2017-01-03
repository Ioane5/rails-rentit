Feature: Query for available Equipment

  As a user I want to be able to query for available equipment by following criteria
  Plant name and Start/End dates.


  Background: data in database

    Given the following plants exist:
      | name         | description | price| id |
      | Excavator    | Some Descr  | 120  | 1  |
      | Bulldozer    | Some Descr  | 220  | 2  |
      | Roller       | Some Descr  | 180  | 3  |
      | Rubber duck  | Some Descr  | 20   | 4  |

    Given the following purchase orders exist:
      | cost | plant_id | start_date | end_date   |
      | 10   |    1     | 2015-05-25 | 2016-06-25 |
      | 100  |    2     | 2014-06-25 | 2015-06-25 |
      | 189  |    3     | 2016-05-25 | 2017-06-25 |
      | 210  |    4     | 2016-12-15 | 2016-12-25 |

  Scenario: query for available plants
    When I go to the query page
    And  I fill start date with "2017-01-01"
    And  I fill end date with "2017-02-01"
    And  I fill plant name with "Excavator"
    And  I press "query plant catalog"
    Then I should see "Excavator"


  Scenario: query for available plants
    When I go to the query page
    And  I fill start date with "2017-01-01"
    And  I fill end date with "2017-02-01"
    And  I fill plant name with "Excavator"
    And  I press "query plant catalog"
    And  I press "select"
    Then I should see "Details of purchase order"