require_relative '../lib/convert_hash_syntax'

# example(it)内でローカル変数を宣言する
describe 'convert_hash_syntax' do
  it '=>が:に置き換わる' do
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

# letを使う
describe 'convert_hash_syntax' do
  let(:old_syntax) do
    <<~TEXT
      {
        :name => 'Alice',
        :age => 20,
        :gender => :female
      }
    TEXT
  end

  let(:expected) do
    <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
  end

  it '=>が:に置き換わる' do
    expect(convert_hash_syntax(old_syntax)).to eq(expected)
  end
end