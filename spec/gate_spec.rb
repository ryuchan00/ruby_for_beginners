require_relative '../lib/gate'

describe 'gate' do
  it 'エラーにならない' do
    expect(Gate.new).to be_truthy
  end
end