require_relative '../lib/fizz_buzz'

describe 'test_fizz_buzz' do
  it '引数が返却される' do
    expect(fizz_buzz(1)).to eq('1')
    expect(fizz_buzz(2)).to eq('2')
    expect(fizz_buzz(4)).to eq('4')
  end

  it 'Fizzが返却される' do
    expect(fizz_buzz(3)).to eq('Fizz')
    expect(fizz_buzz(6)).to eq('Fizz')
  end

  it 'Buzzが返却される' do
    expect(fizz_buzz(5)).to eq('Buzz')
  end

  it 'FizzBuzzが返却される' do
    expect(fizz_buzz(15)).to eq('Fizz Buzz')
  end
end
