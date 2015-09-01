require_relative "../../lib/airplane"
require 'pry'

describe Airplane do
  let(:airplane) { Airplane.new("cesna", 10, 150) }
  describe "#initialization" do
    it "creates an airplane object" do
      expect(airplane.type).to eq("cesna")
    end
  end


  describe "#takeoff" do
    context 'when you are flying' do
      it 'returns true' do
        airplane.start
        expect(airplane.takeoff).to eq("you are flying.")
      end
    end
  end

  describe "#start" do
    context 'when the plane is on' do
      it 'returns true' do
        expect(airplane.start).to eq('engines turned on.')
      end
    end
  end


    describe "#land" do
      context 'when you land' do
        it 'returns true' do
          airplane.start
          airplane.takeoff
          expect(airplane.land).to eq('you landed.')
        end
      end
    end

end
