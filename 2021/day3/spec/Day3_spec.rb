require "Day3Pt1"
require "Day3Pt2"

describe Day3Pt1 do

  context "test examples" do
    it "returns true if valid" do
      expect(Day3Pt1.run()).to eq(749376)
    end

  end

end

describe Day3Pt2 do

    context "test examples" do
      it "returns true if valid" do
        expect(Day3Pt2.run("oxygen")).to eq(3871)
      end

      it "returns true if valid" do
        expect(Day3Pt2.run("scrubber")).to eq(613)
      end

    end

end
