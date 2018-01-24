require_relative '../lib/fizz_buzz'

describe "method fizz_buzz" do
  it "正常系" do
    expect(fizz_buzz(1)).to eq('1')
    expect(fizz_buzz(2)).to eq('2')
    expect(fizz_buzz(3)).to eq('Fizz')
    expect(fizz_buzz(4)).to eq('4')
    expect(fizz_buzz(5)).to eq('Buzz')
    expect(fizz_buzz(6)).to eq('Fizz')
    expect(fizz_buzz(15)).to eq('Fizz Buzz')
  end
end
