require_relative '../lib/effects'

describe 'reverse' do
  let(:effect) { Effects.reverse }
  subject(:effect_reverse) { effect.call('Ruby is fun!') }
  it 'とりあえずモジュールが参照できることを確認する' do
    expect(effect_reverse).to eq('ybuR si !nuf')
  end
end
