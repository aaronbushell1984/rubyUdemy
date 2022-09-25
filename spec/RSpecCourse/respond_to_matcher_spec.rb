# frozen_string_literal: true

require_relative '../../RSpecCourse/hot_chocolate'

RSpec.describe HotChocolate do
  context 'when using respond_to an object' do
    it 'should respond to a method' do
      expect(subject).to respond_to(:drink)
      expect(subject).to respond_to(:discard, :drink, :purchase)
    end
  end
  it 'should respond to a method and check number of arguments' do
    expect(subject).to respond_to(:purchase).with(1).argument
  end
  it { is_expected.to respond_to(:purchase, :discard) }
  it { is_expected.to respond_to(:purchase).with(1).argument }
end
