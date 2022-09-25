# frozen_string_literal: true

RSpec.describe 'Allow_method' do
  context 'when using doubles' do
    context 'of our own' do
      it 'can customise return values for methods' do
        calculator = double
        allow(calculator).to receive(:add).and_return(15)
        expect(calculator.add).to eq(15)
      end
    end
    context 'on a real object' do
      it 'should replace a stubbed method' do
        arr = [1, 2, 3]
        allow(arr).to receive(:sum).and_return(1)
        expect(arr.sum).to eq(1)
      end
      it 'should should not replace methods which were not stubbed' do
        arr = [1, 2, 3]
        allow(arr).to receive(:sum).and_return(1)
        expect(arr.length).to eq(3)
        expect(arr.count(2)).to eq(1)
      end
    end
    context 'with a sequence of return values' do
      it 'should replace pop and check for each different value' do
        mock_array = double
        allow(mock_array).to receive(:pop).and_return(:b, :a, nil)
        expect(mock_array.pop).to eq(:b)
        expect(mock_array.pop).to eq(:a)
        expect(mock_array.pop).to eq(nil)
      end
    end
  end
end
