require 'OysterCard'
describe OysterCard do
    it "it doesn't give an error" do
        expect{ oystercard = OysterCard.new }.not_to raise_error
    end

    it "checks balance in card" do
        expect(subject.balance).to eq (0)
    end 
    describe '#top_up' do
        it { is_expected.to respond_to(:top_up).with(1).argument }
    end
    
    it 'can top up the balance' do
        expect{subject.top_up (1) }.to change{ subject.balance }.by (1)
    end

    it "if balance after top up is greater than 90 raise an error message" do
        maximum_balance = OysterCard::MAXIMUM_BALANCE
        subject.top_up(maximum_balance)
        expect{ subject.top_up 1 }.to raise_error 'Maximum balance of £90 exceeded.'
    end


end
