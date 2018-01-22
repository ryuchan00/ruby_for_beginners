require_relative '../lib/convert_hash_syntax'

describe 'convert_hash_syntax' do
  it '正常' do
    old_syntax = <<~TEXT
    {
      :name => 'Alice',
      :age => 20,
      :gender => :female
    }
    TEXT
    expected = <<~TEXT
    {
      name: 'Alice',
      age: 20,
      gender: :female
    }
    TEXT
    expect(convert_hash_syntax(old_syntax)).to eq(expected)
  end
end