require_relative '../lib/fizz_buzz'

describe "method fizz_buzz" do
  it "正常系" do
    expect(fizz_buzz(1)).to eq('1')
    expect(fizz_buzz(2)).to eq('2')
    expect(fizz_buzz(3)).to eq('Fizz')
  end
end
