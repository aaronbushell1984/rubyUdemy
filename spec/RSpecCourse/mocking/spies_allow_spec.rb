# frozen_string_literal: true

require_relative '../../../RspecCourse/mocking/car'
require_relative '../../../RspecCourse/mocking/garage'

RSpec.describe Garage do
  context 'when using spy with allow' do
    let(:car) { instance_double(Car) }
    before do
      allow(Car).to receive(:new).and_return(car)
    end
    context 'and calling add to collection' do
      it 'should call car new with passed model' do
        subject.add_to_collection('Tesla Model S')
        expect(Car).to have_received(:new).with('Tesla Model S')
      end
      it 'should have 1 car in storage' do
        subject.add_to_collection('Tesla Model S')
        expect(subject.storage.length).to eq(1)
      end
      it 'should have passed the car passed as first object in storage' do
        subject.add_to_collection('Tesla Model S')
        expect(subject.storage.first).to eq(car)
      end
    end

  end
end
