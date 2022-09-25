# frozen_string_literal: true

RSpec.describe 25 do
  context 'when using multiple expectation syntax' do
    it 'should test multiple matchers' do
      expect(subject).to be_odd
      expect(subject).to be > 20
    end
    it { is_expected.to be_odd }
    it { is_expected.to be > 20 }
  end
  context 'when using ".and" syntax' do
    it 'should test multiple matchers' do
      expect(subject).to be_odd.and be > 20
    end
    it { is_expected.to be_odd and be > 20 }
    it 'should test multiple matchers with a string' do
      expect('Caterpillar').to start_with('Cat').and end_with('pillar')
    end
  end
  context 'when using "or" syntax' do
    describe [:usa, :canada, :mexico] do
      it 'can check for multiple opportunities' do
        expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:mexico)
      end
    end
  end
end
