require "Day6Pt1"
require "Day6Pt2"

describe Day6Pt1 do

    context "test examples" do
      it "returns true if valid" do
        expect(Day6Pt1.run()).to eq(5)
      end
    end
end


describe Day6Pt2 do

  context "test examples" do
    it "returns true if valid" do
      expect(Day6Pt2.run()).to eq(19)
    end

  end

end
