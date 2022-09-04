# frozen_string_literal: true

require '../testing/king'

RSpec.describe King do
  subject { described_class.new('Boris') }
  context 'Boris' do
    it 'should have name Boris' do
      expected = 'Boris'
      expect(subject.name).to eq(expected)
    end
  end
end
