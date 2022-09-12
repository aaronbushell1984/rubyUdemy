# frozen_string_literal: true

RSpec.describe 'a random double' do
  context 'using methods and returns as hash syntax' do
    it 'it only allows defined methods to be invoked' do
      stuntman = double('Mr. Danger', fall_off_ladder: 'Ouch', light_on_fire: true)
      expect(stuntman.fall_off_ladder).to eq('Ouch')
      expect(stuntman.light_on_fire).to eq(true)
    end
  end
  context 'using receive and_return syntax' do
    it 'it only allows defined methods to be invoked' do
      stuntman = double('Mr. Danger')
      allow(stuntman).to receive(:fall_off_ladder)
      allow(stuntman).to receive(:light_on_fire).and_return(true)
      expect(stuntman.fall_off_ladder).to be_nil
      expect(stuntman.light_on_fire).to eq(true)
    end
  end
  context 'using receive_messages syntax' do
    it 'it only allows defined methods to be invoked' do
      stuntman = double('Mr. Danger')
      allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
      expect(stuntman.fall_off_ladder).to eq('Ouch')
      expect(stuntman.light_on_fire).to eq(true)
    end
  end

end
