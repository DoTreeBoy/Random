Given(/^I'm on puppy homepage$/) do
  @browser.goto 'http://puppies.herokuapp.com/'
end

When(/^I click View Details$/) do
  view_deets 1
end

And(/^I click Adopt Me$/) do
  @browser.button(:value => 'Adopt Me!').click
end

And(/^I click Complete the Adoption$/) do
  @browser.button(:value => 'Complete the Adoption').click
end

And(/^I enter my details and click Place Order$/) do
  @browser.text_field(:id => 'order_name').set('Jameson')
  @browser.text_field(:id => 'order_address').set('4652 Ricky Bobby Lane Grovetucky, OH 43123')
  @browser.text_field(:id => 'order_email').set('ShakeNBake@hotmail.com')
  @browser.select_list(:id => 'order_pay_type').select("Credit card")
  @browser.button(:value => 'Place Order').click
end

Then(/^I have adopted a puppy$/) do
  fail "Browser text did not match expected value" unless @browser.text.include? "Thank you for adopting a puppy!"
end

And(/^I click View Details Hanna$/) do
  view_deets 2
end

And(/^I click Adopt Another Puppy$/) do
  @browser.button(:value => 'Adopt Another Puppy').click
end

And(/^I click View Details Ruby$/) do
  view_deets 4
end

Then(/^"([^"]*)" is in item (\d+)$/) do |name, item|
  row = (item.to_i - 1) * 6
  @browser.table(:index => 0)[row][1].text.should include name
end

Then(/^Left menu are displayed$/) do
  left_menu "Adopt a Puppy"
  left_menu "Learn"
  left_menu "Animal Shelters"
  left_menu "Classifieds"
  left_menu "Message Boards"
  left_menu "Pet News"
end

And(/^Logo displayed$/) do
  @browser.image(:src => "/assets/logo-5894d9aa7b21ec6267e4b5501dfb2c6a.png").loaded?
end