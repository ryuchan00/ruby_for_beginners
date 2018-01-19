require_relative '../lib/fizz_buzz'

describe "upcase" do
  it "正常" do
    # expect("ruby".upcase).to eq("RUBY")
    expect("ruby".capitalize).to eq("RUBY")
  end
end