# frozen_string_literal: true

RSpec.describe 'File_system' do
  subject(:fs) do
    double('File System')
  end
  context 'when calling read' do
    it 'should return "Romeo and Juliet"' do
      allow(fs).to receive(:read).and_return('Romeo and Juliet')
      expect(fs.read).to eq('Romeo and Juliet')
    end
  end
  context 'when calling write' do
    it 'should return false' do
      allow(fs).to receive(:write).and_return(false)
      expect(fs.write).to eq(false)
    end
  end
end
