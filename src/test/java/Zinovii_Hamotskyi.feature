Feature: Search jobs
  As IT-specialist, I want to search some vacancy in Epam, so that I can find a job

  Background:
    Given a computer version website Epam in chapter "Career"
    And I visit "Search job" page

  Scenario:
    Given I use job search field
    When I choose correct keyword, location and skill for my specialisation in search tabs
    And There are some vacancies for me
    Then I can see these vacancies

  Scenario:
    Given I use job search field
    When I choose correct keyword, location and skill for my specialisation in search tabs
    And There are not any vacancy for me
    Then I can see "Sorry, your search returned no results. Please try another combination."

  Scenario:
    Given I use job search field
    When I choose incorrect keyword or location or skill in search tabs
    Then I can see "Sorry, your search returned no results. Please try another combination."


  Scenario:
    Given I use job search field
    When I do not choose any keyword, location and skill in search tabs
    Then I can all exiting vacancies

  Scenario:
    Given I use job search field
    When I  choose any keyword, location and skill in search tabs
    And I push "remote" in checkbox
    Then I can all exiting remote vacancies

  Scenario:
    Given I have not find job offer for me
    And I scroll down to field "DON'T SEE THE DREAM JOB YOU WERE HOPING TO FIND?"
    When push button "register your interest"
    Then I go to another page
    But there I can leave some of my interest