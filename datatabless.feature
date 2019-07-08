#Author: your.email@your.domain.com

Feature: Addition of 2 nos ith different inputs
 

  Scenario Outline:  Add two numbers -2 & 3
    Given I have a calculator
    When I add <a> and <b>
    Then the result should be <op>


    Examples: 
      | a |     b |op  |
      | 1 |     5 |6   |
      | 2 |     7 | 9  |
