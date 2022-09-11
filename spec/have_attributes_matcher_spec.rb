# frozen_string_literal: true

require '../testing/professional_wrestler'

RSpec.describe 'Have_attributes_matcher' do
  context ProfessionalWrestler.new('Steve Austin', 'Stunner') do
    it 'checked for object attributes and proper values' do
      expect(subject).to have_attributes(name: 'Steve Austin')
      expect(subject).to have_attributes(name: 'Steve Austin', finishing_move: 'Stunner')
    end
    it { is_expected.to have_attributes(name: 'Steve Austin') }
    it { is_expected.to have_attributes(name: 'Steve Austin', finishing_move: 'Stunner') }
  end
end
