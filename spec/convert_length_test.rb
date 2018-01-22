require_relative '../lib/convert_length'

describe 'convert_length' do
  it '正常系' do
    # キーワード引数は、メソッド呼び出し側とメソッド側の両方に記述が必要
    expect(convert_length(1, from: :m, to: :in)).to eq(39.37)
    expect(convert_length(15, from: :in, to: :m)).to eq(0.38)
    expect(convert_length(35000, from: :ft, to: :m)).to eq(10670.73)
  end
end