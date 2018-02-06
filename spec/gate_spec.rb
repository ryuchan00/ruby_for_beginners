require_relative '../lib/gate'
require_relative '../lib/ticket'

describe 'gate' do
  let(:umeda) { Gate.new(:umeda) }
  let(:juso) { Gate.new(:juso) }
  let(:mikuni) { Gate.new(:mikuni) }
  let(:ticket) { Ticket.new(fare) }

  describe '梅田から' do
    before do
      umeda.enter(ticket)
    end

    context '十三まで' do
      let(:fare) { 150 }

      it { expect(juso.exit(ticket)).to be_truthy }
    end

    context '三国まで' do
      context '運賃が足りている' do
        let(:fare) { 190 }

        it { expect(mikuni.exit(ticket)).to be_truthy }

      end

      context '運賃が足りていない' do
        let(:fare) { 150 }

        it { expect(mikuni.exit(ticket)).to be_falsey }
      end
    end
  end

  context '十三から三国まで' do
    let(:fare) { 150 }

    before do
      juso.enter(ticket)
    end

    it { expect(mikuni.exit(ticket)).to be_truthy }
  end
end
