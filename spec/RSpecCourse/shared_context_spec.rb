# frozen_string_literal: true

RSpec.shared_context 'common' do
  before do
    @foods = []
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }

end

RSpec.describe 'first example group' do
  include_context 'common'

  it 'can use outside instance variables' do
    expect(@foods.length).to eq(0)
    @foods << 'Sushi'
    expect(@foods.length).to eq(1)
  end
  it 'can re-use a fresh copy in each test' do
    expect(@foods.length).to eq(0)
  end
  it 'can use outside method' do
    expect(some_helper_method).to eq(5)
  end
end

RSpec.describe 'simulate context use in different file' do
  include_context 'common'
  it 'should access array' do
    expect(some_variable).to eq([1, 2, 3])
  end
end



