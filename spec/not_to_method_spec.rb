# frozen_string_literal: true

RSpec.describe 'Not_to_method' do
  context 'not to method' do
    it 'checks that two values do not match' do
      expect(5).to_not eq(6)
    end
  end
end
