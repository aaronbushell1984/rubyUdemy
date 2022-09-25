RSpec.describe 'Start_with_and_end_with' do
  context 'caterpillar' do
    it 'should check for a substring at beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')

      expect(subject).to_not start_with('Cat')
      expect(subject.capitalize).to start_with('Cat')
    end
    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('pillar') }
  end

  context [:a, :b, :c, :d] do
    it 'should check for elements at beginning or end of array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to end_with(:d)
      expect(subject).to end_with(:c, :d)
    end
    it { is_expected.to start_with(:a) }
    it { is_expected.to start_with(:a, :b) }
    it { is_expected.to end_with(:d) }
    it { is_expected.to end_with(:c, :d) }
  end
end
