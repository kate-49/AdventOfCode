require "Day3"

describe Day3 do

    context "test examples" do
      it "returns accurate number of trees" do
        expect(Day3.run()).to eq(5)
      end

      it "returns 0 if no trees" do
            expect(Day3.run()).to eq(2)
      end
    end
end