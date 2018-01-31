require_relative '../lib/word_synth'
require_relative '../lib/effects'

describe 'play' do
  it 'とりあえずクラスとモジューが参照できることを確認する' do
    expect(WordSynth).to be_truthy
    expect(Effects).to be_truthy
  end
end