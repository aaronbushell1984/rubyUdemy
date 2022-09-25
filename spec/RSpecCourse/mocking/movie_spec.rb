# frozen_string_literal: true

require_relative '../../../RspecCourse/mocking/movie'

RSpec.describe Movie do
  let(:stuntman) do
    double('Mr. Danger',
           ready?: true,
           act: "I'm not an actor dub this for me",
           fall_off_ladder: 'Sure thing!',
           light_on_fire: true)
  end
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
    let(:stuntman) do
      double('Mr. Danger',
             ready?: false,
             act: 'I love you, baby',
             fall_off_ladder: 'Call my agent! No way!',
             light_on_fire: false)
    end
    it 'should have an actor not perform three actions' do
      expect(stuntman).to receive(:ready?)
      expect(stuntman).not_to receive(:act)
      expect(stuntman).not_to receive(:fall_off_ladder)
      expect(stuntman).not_to receive(:light_on_fire)
      subject.start_shooting
    end
  end
  context 'when start_shooting checking exact counts with once and twice syntax' do
    it 'should have an actor act twice and fall_off_ladder and light_on_fire exactly one time' do
      expect(stuntman).to receive(:act).twice
      expect(stuntman).to receive(:fall_off_ladder).once
      expect(stuntman).to receive(:light_on_fire).once
      subject.start_shooting
    end
  end
  context 'when start_shooting checking exact counts with exactly(x) times syntax' do
    it 'should have an actor act twice and fall_off_ladder and light_on_fire exactly one time' do
      expect(stuntman).to receive(:act).exactly(2).times
      expect(stuntman).to receive(:fall_off_ladder).exactly(1).times
      expect(stuntman).to receive(:light_on_fire).exactly(1).times
      subject.start_shooting
    end
  end
  context 'when start_shooting checking at most' do
    it 'should have an actor act twice and fall_off_ladder and light_on_fire once' do
      expect(stuntman).to receive(:act).at_most(2).times
      expect(stuntman).to receive(:fall_off_ladder).at_most(1).times
      expect(stuntman).to receive(:light_on_fire).at_most(1).times
      subject.start_shooting
    end
  end
  context 'when start_shooting checking at least' do
    it 'should have an actor act twice and fall_off_ladder and light_on_fire once' do
      expect(stuntman).to receive(:act).at_least(2).times
      expect(stuntman).to receive(:fall_off_ladder).at_least(1).times
      expect(stuntman).to receive(:light_on_fire).at_least(1).times
      subject.start_shooting
    end
  end
end
