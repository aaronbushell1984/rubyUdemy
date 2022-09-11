# frozen_string_literal: true

RSpec.describe 'All_matcher' do
  it 'aggregate checks done with a loop' do
    [5, 7, 9].each do |val|
      expect(val).to be_odd
    end
  end
  it 'can perform aggregate checks with all matcher instead' do
    expect([5, 7, 9]).to all(be_odd)
    expect([6, 8, 10]).to all(be_even)
    expect([[], [], []]).to all(be_empty)
    expect([0, 0]).to all(be_zero)
    expect([5, 7, 9]).to all(be < 10)
  end
  describe [5, 7, 9] do
    it{ is_expected.to all(be_odd) }
    it{ is_expected.to all(be < 10) }
  end
end
