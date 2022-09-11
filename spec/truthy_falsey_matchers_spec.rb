# frozen_string_literal: true
RSpec.describe 'Truthy_falsey_matchers' do
  it 'can test for falseness (false, nil)' do
    expect(false).to be_falsey
    expect(nil).to be_falsey
  end
  it 'can test for truthiness (everything not falsy - think valid)' do
    expect(true).to be_truthy
    expect('Hello').to be_truthy
    expect(5).to be_truthy
    expect(0).to be_truthy
    expect(-1).to be_truthy
    expect(3.14).to be_truthy
    expect([]).to be_truthy
    expect([5, 2]).to be_truthy
    expect({}).to be_truthy
    expect(:symbol).to be_truthy
  end
  context 'can check is nil (different to falsey i.e: is nil)' do
    it 'proves nil is nil' do
      expect(nil).to be_nil
    end
    it 'prove a missing key in hash is nil' do
      hash = { a: 5 }
      expect(hash[:b]).to be_nil
    end
  end

end
