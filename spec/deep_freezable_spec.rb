require_relative '../lib/bank'
require_relative '../lib/team'

describe 'deep_freeze_to_array' do
  context '配列の値は正しいか？' do
    it '正しい' do
      expect(Team::COUNTRIES).to eq(['Japan', 'US', 'India'])
    end
  end

  context '配列自身がfreezeされているか？' do
    it 'freezeされている' do
      expect(Team::COUNTRIES.frozen?).to be_truthy
    end
  end

  context '配列の要素が全てfreezeされているか？' do
    it 'freezeされている' do
      expect(Team::COUNTRIES.all? { |country| country.frozen? }).to be_truthy
    end
  end
end

describe 'deep_freeze_to_hash' do
  context 'ハッシュの値は正しいか？' do
    let(:currencies) { {
        'Japan' => 'yen',
        'US' => 'dollar',
        'India' => 'rupee'
    } }
    it '正しい' do
      expect(Bank::CURRENCIES).to eq(currencies)
    end
  end

  context 'ハッシュ自身かfreezeされているか？' do
    it 'freezeされている' do
      expect(Bank::CURRENCIES.frozen?).to be_truthy
    end
  end

  context 'ハッシュの要素(キーと値)が全てfreezeされているか？' do
    it '全てfreezeされている' do
      expect(Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }).to be_truthy
    end
  end
end