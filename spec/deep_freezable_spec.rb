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
      expect(Team::COUNTRIES.all?).to be_truthy
    end
  end
end
