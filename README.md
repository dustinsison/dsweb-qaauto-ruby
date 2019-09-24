# dsweb-qaauto-ruby
Automated tests for dustinsison.com written in Ruby

### Update Log:
[Sept 24, 2019] - Updated Readme. Added integration with TravisCI.

### Introduction
This repository contains automated tests for the website DustinSison.com. The steps are written in Cucumber, and the test steps are written in Ruby. These tests can be ran locally, but they are also ran automatically with every new build pushed to the GitHub Repository, through TravisCI.

### Tech Stack
- Ruby 2.3.3+
    - Cucumber
    - Gherkin
    - Selenium-Webdriver
    - RSpec
    - ChromeDriver
- TravisCI

### Dependencies
If you're running the project locally, you'll need to install Ruby 2.3.3 and all of the listed Gems in the Tech Stack. Otherwise, these tests will run automatically with every new commit pushed to GitHub via TravisCI.

### Installation Steps
1. Install dependencies (Ruby 2.3.3, Gems, etc.) 
2. Clone repository locally.
3. Open Terminal/CMD/etc and navigate to the local repository.
4. Enter 'cucumber', and the tests should automatically run.

### Available Tests:
- Account pages (Subscriber-level account)
- Blog pages
- Footer
- Homepage
- Navigation Menu
- Project pages

### Coming Soon:
Trello Board available here: https://trello.com/b/buBWl99d/dustinsisoncom-qa-automation

### Credits:
Dustin Sison

Article used for initial setup: http://www.seleniumframework.com/basic-tutorial/setup-ruby-and-components/
