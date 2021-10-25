require 'OysterCard'
describe OysterCard do
    it "it doesn't give an error" do
        expect{ oystercard = OysterCard.new }.not_to raise_error
    end

    it "checks balance in card" do
        oystercard = OysterCard.new
        expect(oystercard.balance).to eq (0)
    end 
end
