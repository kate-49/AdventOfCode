require "Day1Pt1"
require "Day1Pt2"

describe Day1Pt1 do

    context "test examples" do
      it "returns true if valid" do
        expect(Day1Pt1.run()).to eq(1162)
      end
    end
end


describe Day1Pt2 do

  context "test examples" do
    it "returns true if valid" do
      expect(Day1Pt2.run()).to eq(1190)
    end

  end

end
