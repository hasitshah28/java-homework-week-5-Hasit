Feature: Nopcommerce registration

  As a user
      I want to check the Register Functionality of Nopcommerce

  Background: I am on Nopcommerce Registration page
      Given   I open the Google Chrome Browser
      When    I open the URL https://demo.nopcommerce.com/register
      Then    I am on Nopcommerce Registration page

      Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
                When    I enter first name "<First Name>"
                And     I enter last name "<Last Name>"
                And     I enter Email address "<Email>"
                And     I enter Password "< Password>"
                And     I enter Confirm Password "<Confirm Password>"
                And     Click on Register button
                Then    I can see error message "<Error message>"
                And     I am not able to register

                Examples:
                  |First Name|Last Name|Email               |Password |Confirm Password  |Error Message                               |
                  |""        |Shakshi   |shakshi@gmail.com  |123456   |123456            |please enter First Name                     |
                  |Milan     |""        |shakshi@gmail.com  |123456   |123456            |please enter Last Name                      |
                  |Milan     |Shakshi   |""                 |123456   |123456            |please enter valid email                    |
                  |Milan     |Shakshi   |shakshi@gmail.com  |""       |123456            |password is required                        |
                  |Milan     |Shakshi   |shakshi@gmail.com  |123456   |""                |confirm password is required                |
                  |Milan     |Shakshi   |shakshi@gmail.com  |123456   |12356             |password and confirm password do not match  |
                  |Milan     |Shakshi   |shakshi@gmail.com  |12356    |""                |minimum 6 character password is required    |
                  |""        |""        |""                 |**       |**                |Mandatory (*) field is required             |

      Scenario: I should be able to select any radio button from Gender Label of Your Personal Details section
        Given   I am on Gender Label on Your Personal Detail section
        When    I select "Male" radio button
        And     I select "Female" radio button
        Then    I am able to select any of the radio button

      Scenario Outline: I should able to select Day, Month and Year from drop down list of Date of birth field
        Given           I am on Date of Birth field of Your Personal Detail section
        When            I select "<Day>"
        And             I select "<Month>"
        And             I select Year "<Year>"
        Then            I am able to select Day, Month and year from drop down list

        Examples:
                  |Day |Month     |Year   |
                  |29  |February  |1988   |
      Scenario: I should be able to check and uncheck the Newsletter box on Options section
        Given   I am on Newsletter label on Options section
        When    I click on Newsletter Checkbox
        And     I again click on Newsletter checkbox
        Then    I was ablr to check and uncheck the box next to Newsletter label

      Scenario: I should be able to register with valid mandatory (*) field data on registration page
        When    I enter Firat name " Milan"
        And     I enter Last name "Shakshi"
        And     I enter valid Email "shakshi@gmail.com"
        And     I enter valid password "123456"
        And     I enter valid confirm password "123456"
        And     I click Register button
        Then    I was able to register successfully