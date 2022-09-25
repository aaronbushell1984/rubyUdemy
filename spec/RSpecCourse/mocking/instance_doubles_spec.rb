# frozen_string_literal: true

require_relative '../../../RspecCourse/mocking/actor'

RSpec.describe Actor do
  context 'when using regular double' do
    it 'should allow incorrect stubs to be added to Actor double' do
      stuntman = double(nap: 'Zzz')
      expect(stuntman.nap).to eq('Zzz')
    end
  end
  context 'when using an instance double' do
    it 'should only allow correct stubs to be added' do
      # stuntman = instance_double(Actor, nap: 'Zzz')
      # protects with error - the Actor class does not implement the instance method: nap
      stuntman = instance_double(Actor,
                                 ready?: true,
                                 act: "I don't act",
                                 fall_off_ladder: "Let's Go",
                                 light_on_fire: true)
      expect(stuntman.ready?).to eq(true)
      expect(stuntman.act).to eq("I don't act")
      expect(stuntman.fall_off_ladder).to eq("Let's Go")
      expect(stuntman.light_on_fire).to eq(true)
    end
    it 'should only allow correct number of arguments to be added' do
      stuntman = instance_double(Actor)
      # allow(stuntman).to receive(:act).with("Do it quickly").and_return("I don't act and even an actor won't quickly")
      # protects with error - Wrong number of arguments. Expected 0, got 1.
      allow(stuntman).to receive(:act).with(no_args).and_return("I don't act and even an actor won't quickly")
      expect(stuntman.act).to eq("I don't act and even an actor won't quickly")
    end
  end
end
