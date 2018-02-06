require_relative '../lib/word_synth'
require_relative '../lib/effects'

describe 'play' do
  let(:synth) { WordSynth.new }
  subject(:play) { synth.play('Ruby is fun!') }

  context 'effectなし' do
    it 'エフェクトも付与される' do
      expect(play).to eq('Ruby is fun!')
    end
  end

  context 'reverseエフェクトを加える' do
    let!(:add_effect) { synth.add_effect(Effects.reverse) }

    it '文字列が反転する' do
      expect(play).to eq('ybuR si !nuf')
    end
  end

  context '多くのエフェクトを加える' do
    let!(:add_effect1) { synth.add_effect(Effects.echo(2)) }
    let!(:add_effect2) { synth.add_effect(Effects.loud(3)) }
    let!(:add_effect3) { synth.add_effect(Effects.reverse) }

    it '文字列が反転する' do
      expect(play).to eq('!!!YYBBUURR !!!SSII !!!!!NNUUFF')
    end
  end
end