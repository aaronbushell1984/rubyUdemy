# frozen_string_literal: true

require '../testing/custom_error'

RSpec.describe 'Raise_error_matcher' do

  # some_method returns x which is designed to raise a name error when called
  def some_method
    x
  end

  context 'can check error' do
    it 'should catch error without providing specific error' do
      expect { some_method }.to raise_error
    end
    it 'should catch specific name error' do
      expect { some_method }.to raise_error(NameError)
    end
    it 'should catch specific zero error' do
      expect { 10 / 0 }.to raise_error(ZeroDivisionError)
    end
    it 'should catch user defined error' do
      expect { raise CustomError }.to raise_error(CustomError)
    end
  end

end
