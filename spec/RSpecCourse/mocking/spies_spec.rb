# frozen_string_literal: true

RSpec.describe 'Spies' do
  let(:animal) { spy('animal') }
  context 'when calling spy' do
    it 'should confirm a function call' do
      animal.eat_food
      expect(animal).to have_received(:eat_food)
    end
    it 'should confirm a function not called' do
      animal.eat_food
      expect(animal).not_to have_received(:eat_human)
    end
    it 'should reset between cases' do
      expect(animal).not_to have_received(:eat_human)
    end
    it 'should be able to use same functionality as a double' do
      animal.eat_food
      animal.eat_food
      animal.eat_food('Sushi')
      expect(animal).to have_received(:eat_food).exactly(3).times
      expect(animal).to have_received(:eat_food).at_least(2).times
      expect(animal).to have_received(:eat_food).with('Sushi')
      expect(animal).to have_received(:eat_food).once.with('Sushi')
    end
  end
end
