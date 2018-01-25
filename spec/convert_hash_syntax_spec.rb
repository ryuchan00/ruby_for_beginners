require_relative '../lib/convert_hash_syntax'

describe 'test_convert_hash_syntax' do
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

  it '=>が:に置き換わる' do
    expect(convert_hash_syntax(old_syntax)).to eq(expected)
  end
end