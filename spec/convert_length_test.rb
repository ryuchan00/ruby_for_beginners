require_relative '../lib/convert_length'

describe 'convert_length' do
  it '正常系' do
    expect(convert_length(1, 'm', 'in')).to eq(39.37)
    expect(convert_length(15, 'in', 'm')).to eq(0.38)
  end
end