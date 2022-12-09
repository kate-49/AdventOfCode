require "Day4Pt1"
require "Day4Pt2"

describe Day4Pt1 do

    context "test examples" do
      it "returns true if valid" do
        expect(Day4Pt1.run()).to eq(2)
      end
    end
end

describe Day4Pt2 do

  context "test examples" do
    it "returns true if valid" do
      expect(Day4Pt2.run()).to eq(4)
    end

  end

end
