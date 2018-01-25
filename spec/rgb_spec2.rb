require_relative '../lib/rgb'

describe 'test_to_hex' do
  context 'r,g,bそれぞれの値が同じ値' do
    it '16進数に変換されたカラーコードが返却される' do
      expect(to_hex(0, 0, 0)).to eq('#000000')
      expect(to_hex(255, 255, 255)).to eq('#ffffff')
    end
  end
  context 'r,g,bそれぞれの値が違う値' do
    it '16進数に変換されたカラーコードが返却される' do
      expect(to_hex(4, 60, 120)).to eq('#043c78')
    end
  end
end

describe 'test_to_ints' do
  it 'to_ints true' do
    expect(to_ints('#000000')).to eq([0, 0, 0])
    expect(to_ints('#ffffff')).to eq([255, 255, 255])
    expect(to_ints('#043c78')).to eq([4, 60, 120])
  end
end
