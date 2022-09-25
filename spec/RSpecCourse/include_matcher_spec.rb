# frozen_string_literal: true

RSpec.describe 'Include_matcher' do
  context 'hot chocolate' do
    it 'check for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')
    end
    it { is_expected.to include(' cho') }
  end
  context [10, 20, 30] do
    it 'should include in the array regardless of order' do
      expect(subject).to include(10)
      expect(subject).to include(10, 30)
      expect(subject).to include(30, 20)
    end
    it { is_expected.to include(30, 10)}
  end
  context ({ a: 2, b: 4}) do
    it 'should be able to check for a key existence' do
      expect(subject).to include(:b)
      expect(subject).to include(:b, :a)
    end
    it 'should be able to check for a key-value pair existence' do
      expect(subject).to include(b: 4)
      expect(subject).to include(b: 4, a: 2)
    end
    it { is_expected.to include(:a) }
    it { is_expected.to include(a: 2, b: 4) }
  end
end
