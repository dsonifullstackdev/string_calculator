# README

**Simple String Calculator Application**
  Overview
  This is a simple String Calculator application implemented in Ruby on Rails following Test-Driven Development (TDD) practices. The application calculates the sum of numbers provided in a string format with various delimiters and handles special cases such as new lines and negative numbers.

**Requirements**
* Ruby version: 3.1
* Rails version: 7.1.3.4
* System dependencies: Tested on Ubuntu 20.04

**Installation**
1. Clone the Repository:
  git clone git@github.com:dsonifullstackdev/string_calculator.git
  cd string_calculator
  bundle install

**Running Tests**
  bundle exec rspec

**File Structure**
  * Main Logic: app/services/string_calculator.rb
  * Test Cases: spec/string_calculator_spec.rb

__Usage
  The main logic for the string calculator can be found in app/services/string_calculator.rb. This class provides a method .add which takes a string of numbers and returns their sum.



