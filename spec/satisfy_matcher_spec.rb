RSpec.describe 'Satisfy_matcher' do
  subject { 'racecar' }
  context 'when not providing satisfy with a string custom error message' do
    it 'should be a palindrome but fail with less friendly error' do
      expect(subject).to satisfy{ |value| value == value.reverse }
    end
  end
  context 'when providing satisfy with a string custom error message' do
    it 'should be a palindrome but fail with a friendlier error' do
      expect(subject).to satisfy('to be a palindrome') do |value|
        value == value.reverse
      end
    end
  end
end
