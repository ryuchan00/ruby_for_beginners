require_relative '../lib/effects'

describe 'reverse' do
  let(:effect) { Effects.reverse }
  subject(:effect_reverse) { effect.call('Ruby is fun!') }

  it '文字列がシャッフルされる' do
    expect(effect_reverse).to eq('ybuR si !nuf')
  end
end

describe 'echo' do
  let(:effect) { Effects.echo(arg) }
  subject(:effect_echo) { effect.call('Ruby is fun!') }

  context '引数が2の場合' do
    let(:arg) { 2 }

    it '各文字が2回づつ繰り返される' do
      expect(effect_echo).to eq('RRuubbyy iiss ffuunn!!')
    end
  end

  context '引数が3の場合' do
    let(:arg) { 3 }

    it '各文字が3回づつ繰り返される' do
      expect(effect_echo).to eq('RRRuuubbbyyy iiisss fffuuunnn!!!')
    end
  end
end

describe 'loud' do
  let(:effect) { Effects.loud(arg) }
  subject(:effect_loud) { effect.call('Ruby is fun!') }

  context '引数が2の場合' do
    let(:arg) { 2 }

    it '文字列が大文字になり、単語毎の末尾に`!!`がつく' do
      expect(effect_loud).to eq('RUBY!! IS!! FUN!!!')
    end
  end

  context '引数が3の場合' do
    let(:arg) { 3 }

    it '文字列が大文字になり、単語毎の末尾に`!!!`がつく' do
      expect(effect_loud).to eq('RUBY!!! IS!!! FUN!!!!')
    end
  end
end
