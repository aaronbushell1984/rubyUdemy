# frozen_string_literal: true

RSpec.describe 'Matching_arguments' do
  context 'when using the "first" method on rubies array object' do
    let(:three_element_array) { double }  # eg [1, 2, 3]
    context 'and when passing no arguments' do
      it 'should return the first element' do
        allow(three_element_array).to receive(:first).with(no_args).and_return(1)
        expect(three_element_array.first).to eq(1)
      end
    end
    context 'and when passing 1 argument' do
      it 'should return the first element in an array' do
        allow(three_element_array).to receive(:first).with(1).and_return([1])
        expect(three_element_array.first(1)).to eq([1])
      end
    end
    context 'and when passing multiple arguments' do
      it 'should return the first two elements in the array when passing 2' do
        allow(three_element_array).to receive(:first).with(2).and_return([1, 2])
        expect(three_element_array.first(2)).to eq([1, 2])
      end
      it 'should return the first three elements in the array when passing 100' do
        allow(three_element_array).to receive(:first).with(be >= 3).and_return([1, 2, 3])
        expect(three_element_array.first(1000)).to eq([1, 2, 3])
      end
    end
  end
end
