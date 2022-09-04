# frozen_string_literal: true

require '../testing/programming_language'

RSpec.describe ProgrammingLanguage do
  context 'when new without argument' do
    let(:language) { ProgrammingLanguage.new }
    it 'name should default to ruby' do
      expected = 'Ruby'
      expect(language.name).to eql(expected)
    end

    context 'when new with argument' do
      let(:language) { ProgrammingLanguage.new('Python') }
      it 'name can be set ' do
        expected = 'Python'
        expect(language.name).to eql(expected)
      end
    end
  end
end
