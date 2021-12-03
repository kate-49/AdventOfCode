require "Day2Pt1"
require "Day2Pt2"

describe Day2Pt1 do

  context "test examples" do
    it "returns true if valid" do
      expect(Day2Pt1.run()).to eq(1804520)
    end

  end

end

describe Day2Pt2 do

    context "test examples" do
      it "returns true if valid" do
        expect(Day2Pt2.run()).to eq(1971095320)
      end

    end

end
