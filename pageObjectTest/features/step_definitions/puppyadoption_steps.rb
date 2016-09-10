Given(/^Iam on puppy adoption webpage$/) do
visit BasePage
end
When(/^I select a puppy (.*)$/) do |puppy_Name|
  on(Homepagep).viewdetailsAdopt(puppy_Name)
end


And(/^click on Adopt Me button$/) do
on(AdoptMePage).adopt_me_button

end

And(/^select (.*) and click on complete adoption button$/) do |argument|

  on(CartPage).additional(argument)
  on(CartPage).complete_Adoption
end

Then(/^I should be navigated to checkout page$/) do

p @current_page.title
end

When(/^I enter (.*) and (.*) and (.*)select (.*) without entering Email field$/) do |name, address, email, pay_Type|
  on(CheckoutPagep).ordername = name
  on(CheckoutPagep).address = address
  on(CheckoutPagep).email = email
  on(CheckoutPagep).paytype = pay_Type

end

And(/^click on Place Order$/) do
  on(CheckoutPagep).placeorder
end


Then(/^I should see the Message (.*)$/) do |message|
  @current_page.text.should include message
end