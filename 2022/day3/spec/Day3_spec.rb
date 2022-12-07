require "Day3Pt1"
require "Day3Pt2"

describe Day3Pt1 do

    context "test examples" do
      it "returns true if valid" do
        expect(Day3Pt1.run()).to eq(157)
      end
    end
end

describe Day3Pt2 do

  context "test examples" do
    it "returns true if valid" do
      expect(Day3Pt2.run()).to eq(70)
    end

  end

end
