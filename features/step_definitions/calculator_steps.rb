require_relative '../pages/calculator_page'

When('I open the calculator app') do
  @calc = CalculatorPage.new
  @calc.open_app
end

When('I submit {string} and {string}') do |num1, num2|
  @calc.verify_calculator_displayed
  @calc.calculate_sum(num1, num2)
end

Then('the sum should be {string}') do |answer|
  expect(@calc.get_result).to eq(answer)
end

Then('the sum should not be calculated') do
  expect(@calc.get_result).to eq('0')
end
