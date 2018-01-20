require_relative '../lib/rgb'

describe 'rgb' do
  it 'hex true' do
    expect(to_hex(0, 0, 0)).to eq('#000000')
    expect(to_hex(255, 255, 255)).to eq('#ffffff')
    expect(to_hex(4, 60, 120)).to eq('#043c78')
  end

  it 'ints true' do
    expect(to_ints('#000000')).to eq([0, 0, 0])
    expect(to_ints('#ffffff')).to eq([255, 255, 255])
    expect(to_ints('#043c78')).to eq([4, 60, 120])
  end
end
