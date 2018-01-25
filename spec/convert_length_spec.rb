require_relative '../lib/convert_length'

describe 'test_convert_length' do
  it 'メートルからインチに変換できる' do
    expect(convert_length(1, from: :m, to: :in)).to eq(39.37)
  end

  it 'インチからメートルに変換できる' do
    expect(convert_length(15, from: :in, to: :m)).to eq(0.38)
  end

  it 'フィートからメートルに変換できる' do
    expect(convert_length(35000, from: :ft, to: :m)).to eq(10670.73)
  end
end