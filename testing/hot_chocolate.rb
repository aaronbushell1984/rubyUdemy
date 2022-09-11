# frozen_string_literal: true

## HotChocolate demonstrates the use of respond_to matcher in testing
class HotChocolate
  def drink
    'Delicious'
  end

  def discard
    'PLOP!'
  end

  def purchase(number)
    'Awesome, I just purchased #{number} more hot chocolate beverages!'
  end
end
