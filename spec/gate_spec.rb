require_relative '../lib/gate'
require_relative '../lib/ticket'

describe 'gate' do
  before do
    @umeda = Gate.new(:umeda)
    @juso = Gate.new(:juso)
    @mikuni = Gate.new(:mikuni)
  end

  context '梅田から十三まで' do
    it '改札を出場できる' do
      # umeda = Gate.new(:umeda)
      # juso = Gate.new(:juso)

      ticket = Ticket.new(150)
      @umeda.enter(ticket)
      expect(@juso.exit(ticket)).to be_truthy
      # クラスが存在するかの確認は、以下のコードで可能
      # expect(Gate.new).to be_truthy
    end
  end

  context '梅田から三国まで' do
    it '改札を出場できない' do
      # umeda = Gate.new(:umeda)
      # mikuni = Gate.new(:mikuni)

      ticket = Ticket.new(150)
      @umeda.enter(ticket)
      expect(@mikuni.exit(ticket)).to be_falsey
    end
  end
end
