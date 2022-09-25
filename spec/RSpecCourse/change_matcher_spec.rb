RSpec.describe 'Change_matcher' do
  subject { [1, 2, 3] }
  context 'checks that a method changes and object state' do
    context 'using from and to' do
      it 'checks length changes from 3 to 4' do
        expect { subject.push(4) }.to change { subject.length }.from(3).to(4)
      end
      it 'checks length changes from 4 to 3' do
        expect { subject.pop }.to change { subject.length }.from(3).to(2)
      end
    end
    context 'using by' do
      it 'checks length increases by 1' do
        expect { subject.push(4) }.to change { subject.length }.by(1)
      end
      it 'checks length decreases by 1' do
        expect { subject.pop }.to change { subject.length }.by(-1)
      end
    end
  end

end
