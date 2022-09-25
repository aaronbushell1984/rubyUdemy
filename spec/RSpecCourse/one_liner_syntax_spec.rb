# frozen_string_literal: true

RSpec.describe 'syntax' do
  subject { 5 }

  context 'with classic syntax' do
    it 'should equal 5' do
      expected = 5
      expect(subject).to eq(expected)
    end
  end
  context 'One_liner_syntax' do
    it { is_expected.to eq(5) }
  end
end
