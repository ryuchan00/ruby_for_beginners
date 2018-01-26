require_relative '../sample/hello'

describe "挨拶" do
  it "ハロー" do
    hello = Hello.new
    expect(hello.greet).to eq("Hello, RSpec!")
  end
end
