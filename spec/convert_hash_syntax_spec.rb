require_relative '../lib/convert_hash_syntax'

describe 'convert_hash_syntax' do
  it '正常' do
    expect(convert_hash_syntax('{}')).to eq('{}')
  end
end