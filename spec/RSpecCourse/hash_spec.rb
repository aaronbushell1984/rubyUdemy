RSpec.describe Hash do
  context 'new subject' do
    it 'length starts empty and increments within test' do
      start = 0
      expect(subject.length).to eq(start)
      incremented = 1
      subject[:key] = 'value'
      expect(subject.length).to eq(incremented)
    end
    it 'should reset between each test' do
      expected = 0
      expect(subject.length).to eq(expected)
    end
  end
end
