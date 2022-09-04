# frozen_string_literal: true

RSpec.describe Array do
  context 'new subject' do
    it 'starts with empty length and push increments length to 1' do
      expected = 0
      expect(subject.length).to eq(expected)
      expected = 1
      subject.push('item')
      expect(subject.length).to eq(expected)
    end
  end
end
