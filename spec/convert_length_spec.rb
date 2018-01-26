require_relative '../lib/convert_length'

describe 'convert_length' do
  context 'fromがメートル、toがインチの場合' do
    it 'メートルからインチに変換できる' do
      expect(convert_length(1, from: :m, to: :in)).to eq(39.37)
    end
  end

  context 'fromがインチ、toがメートルの場合' do
    it 'インチからメートルに変換できる' do
      expect(convert_length(15, from: :in, to: :m)).to eq(0.38)
    end
  end

  context 'fromがメートル、toがインチの場合' do
    it 'フィートからメートルに変換できる' do
      expect(convert_length(35000, from: :ft, to: :m)).to eq(10670.73)
    end
  end
end
