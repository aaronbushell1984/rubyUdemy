# frozen_string_literal: true
#
RSpec.describe 'Equality_matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }
  context 'when eq matcher' do
    it 'float and Integers of same value match' do
      expect(a).to eq(b)
    end
  end
  context 'when eql matcher' do
    it 'does not match same value but different type' do
      expect(a).to_not eql(b)
    end
  end
  context 'equal and its alias: be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }
    it 'matches an item which is the same place in memory' do
      expect(c).to equal(e)
      expect(e).to be(c)
    end
    it 'does not match an item which is an exact copy but not same place in memory' do
      expect(c).to_not equal(d)
      expect(d).to_not be(c)
    end
  end
end
