require "Day2Pt1"
require "Day2Pt2"

describe Day2Pt1 do

    context "test examples" do
      it "returns true if valid" do
        expect(Day2Pt1.run()).to eq(15)
      end
    end
end

describe Day2Pt2 do

  context "test examples" do
    it "returns true if valid" do
      expect(Day2Pt2.run()).to eq(12)
    end

  end

end
