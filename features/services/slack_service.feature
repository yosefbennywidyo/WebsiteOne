Feature: Slack Service
  As a site admin
  So that users can join in each others pairing sessions
  I would like them to be aware of each others activity

  Scenario: Slack Notifications
    Given that the env var "SLACK_NOTIFICATIONS" is set to true
    And that the env var "AGILE_BOT_URL" is set to "http://agilebot.herokuapp.com"
    When I start a hangout
    Then There should be an appropriate notification in slack