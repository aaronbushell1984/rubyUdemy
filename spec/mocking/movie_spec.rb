# frozen_string_literal: true

require_relative '../../testing/movie'

RSpec.describe Movie do
  let(:stuntman) {
    double('Mr. Danger',
           ready?: true,
           act: 'I love you, baby',
           fall_off_ladder: 'Call my agent! No way!',
           light_on_fire: false
    )
  }
  subject { described_class.new(stuntman) }
  context 'when start_shooting called with actor ready' do
    it 'should have an actor perform three actions' do
      expect(stuntman).to receive(:ready?)
      expect(stuntman).to receive(:act)
      expect(stuntman).to receive(:fall_off_ladder)
      expect(stuntman).to receive(:light_on_fire)
      subject.start_shooting
    end
  end
  context 'when start_shooting called with actor not ready' do
    let(:stuntman) {
      double('Mr. Danger',
             ready?: false,
             act: 'I love you, baby',
             fall_off_ladder: 'Call my agent! No way!',
             light_on_fire: false
      )
    }
    it 'should have an actor not perform three actions' do
      expect(stuntman).to receive(:ready?)
      expect(stuntman).not_to receive(:act)
      expect(stuntman).not_to receive(:fall_off_ladder)
      expect(stuntman).not_to receive(:light_on_fire)
      subject.start_shooting
    end
  end
end
