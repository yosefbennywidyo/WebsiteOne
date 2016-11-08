Feature: Manual Edit of Youtube livestream url
  As a person involved in an event
  So that I can ensure everyone can watch our livestream
  I would like to have means of editing the youtube livestream url

  Background:
    Given the date is "2014-02-04 07:01:00"
    And following events exist:
      | name         | description         | category | start_datetime          | duration | repeats | time_zone | repeats_every_n_weeks | repeats_weekly_each_days_of_the_week_mask |
      | Repeat Scrum | Daily scrum meeting | Scrum    | 2014/02/03 07:00:00 UTC | 15       | weekly  | UTC       | 1                     | 15                                        |
    And the following hangouts exist:
      | Start time          | Title        | Project    | Category | Event        |    Youtube video id | End time            |
      | 2014-02-04 07:00:00 | HangoutsFlow | WebsiteOne | Scrum    | Repeat Scrum | QWERT55             | 2014-02-04 07:02:00 |
    And I am logged in


  @javascript
  Scenario: Edit youtube URL and ensure event stays live
    And I navigate to the show page for event "Repeat Scrum"
    And I click "Event Actions"
    And I click "Edit hangout link"
    And I fill in "hangout_url" with "http://test.com"
    And I click on the Save button
    Then I should see "This event is now live!"
    And I click "Event Actions"
    And I click "Edit youtube link"
    And I fill in "video_url" with "http://youtu.be/eIc_bQxVUd8"
    And I click the video link save button
    Then I should see link "Watch now" with "http://youtu.be/eIc_bQxVUd8"