require_relative '../lib/effects'

describe 'reverse' do
  let(:effect) { Effects.reverse }
  subject(:effect_reverse) { effect.call('Ruby is fun!') }
  it 'とりあえずモジュールが参照できることを確認する' do
    expect(effect_reverse).to eq('ybuR si !nuf')
  end
end

describe 'echo' do
  subject(:effect_echo) { effect.call('Ruby is fun!') }

  context '繰り返し回数が2の場合' do
    let(:effect) { Effects.echo(2) }

    it '各文字が2回づつ繰り返される' do
      expect(effect_echo).to eq('RRuubbyy iiss ffuunn!!')
    end
  end

  context '繰り返し回数が3の場合' do
    let(:effect) { Effects.echo(3) }

    it '各文字が3回づつ繰り返される' do
      expect(effect_echo).to eq('RRRuuubbbyyy iiisss fffuuunnn!!!')
    end
  end
end
