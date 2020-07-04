require_relative '../pages/calculator_page'

When('I open the demo app') do
  @demo = DemoPage.new
  @demo.open_app
end

When('I select the {string} option') do |option|
  @demo.verify_demo_displayed
  @demo.select(option)
end

Then(/^I should see the (home|content) page$/) do |page|
  expect(@demo.verify_page_loaded(page)).to be true
end
