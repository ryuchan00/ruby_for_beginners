require_relative '../lib/gate'
require_relative '../lib/ticket'

describe 'gate' do
  it '改札を出場できる' do
    umeda = Gate.new(:umeda)
    juso = Gate.new(:juso)

    ticket = Ticket.new(150)
    umeda.enter('ticket')
    expect(juso.exit(ticket))
    # クラスが存在するかの確認は、以下のコードで可能
    # expect(Gate.new).to be_truthy
  end
end
