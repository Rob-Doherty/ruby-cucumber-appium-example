require_relative 'base_page'

class CalculatorPage < BasePage

  CONTENT = {
      number_input_1: { id: 'IntegerA' },
      number_input_2: { id: 'IntegerB' },
      compute_button: { id: 'ComputeSumButton' },
      answer_label:   { id: 'Answer' }
  }

  def verify_calculator_displayed
    CONTENT.each do |_, item|
      _find(item)
    end
  end

  def calculate_sum(num1, num2)
    field_1 = _find(CONTENT[:number_input_1])
    field_2 = _find(CONTENT[:number_input_2])
    field_1.send_keys(num1)
    field_2.send_keys(num2)
    button = _find(CONTENT[:compute_button])
    button.click
  end

  def get_result
    _find(CONTENT[:answer_label]).text
  end
end
