require 'sulfuras'

describe Sulfuras do

  subject(:sulfuras) { described_class.new(0, 80)}

  describe '#initialize' do

    it "Sulfuras never decreases in quality" do
      expect(sulfuras.quality).to eq 80
    end

    it "Sulfuras never has to be sold" do
      expect(sulfuras.sell_in).to eq 0
    end

  end
end