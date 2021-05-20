Feature: Search jobs
  As IT-specialist, I want to search some vacancy in Epam, so that I can find a job

  Background:
    Given a computer version website Epam in chapter "Career"
    And I visit "Search job" page

  Scenario:
    Given I use job search field
    When I choose keyword "Data Analyst", location "Kyiv" in search tabs
    And There are vacancies with these options
    Then I can see these vacancies with these options

  Scenario:
    Given I use job search field
    When I choose keyword "Data Analyst", location "Tashkent" in search tabs
    And There are not any vacancy with these options
    Then I can see message "Sorry, your search returned no results. Please try another combination."

  Scenario:
    Given I use job search field
    When I choose incorrect keyword "Data Anallyst" (with 2 "l") in search tabs
    Then I can see message "Sorry, your search returned no results. Please try another combination."


  Scenario:
    Given I use job search field
    When I do not choose any keyword, location and skill in search tabs
    Then I can see all exiting vacancies

  Scenario:
    Given I use job search field
    When I  choose keyword "Data Analyst", location "Kyiv" in search tabs
    And I push "remote" in checkbox
    Then I can see all exiting remote vacancies with these options

  Scenario:
    Given I have not find job offer for me
    And I scroll down to field "DON'T SEE THE DREAM JOB YOU WERE HOPING TO FIND?"
    When push button "register your interest"
    Then I go to another page "https://www.epam.com/careers/apply-now"
    But there I can leave some of my interest