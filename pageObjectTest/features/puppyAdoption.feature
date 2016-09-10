Feature: Adopting a puppy
  Scenario Outline: Adopting a puppy with given blank field
    Given Iam on puppy adoption webpage
    When I select a puppy <Puppy Name>
    And click on Adopt Me button
    And select <Additional Products> and click on complete adoption button
    Then I should be navigated to checkout page
    When I enter <name> and <Address> and <Email>select <Pay Type> without entering Email field
    And click on Place Order
    Then I should see the Message <Message>
    Examples:
    |Puppy Name|Additional Products|name|Address        |Email      |Pay Type     |Message|
    |Brook     |Chew Toy ($8.99),|Xyz |123 main street|            |Check       |Email can't be blank|
    |Ruby Sue  |Travel Carrier ($39.99)|    |123 street     |xyz@aaa.com|Credit card  |Name can't be blank|
    |Hanna    |Collar & Leash ($19.99)|aaa |               |qqq@sss    |Purchase order|Address can't be blank|

