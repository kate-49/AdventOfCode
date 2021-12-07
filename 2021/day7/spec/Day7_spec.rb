require "Day7Pt1"
require "Day7Pt2"

describe Day7Pt1 do

    context "test examples" do
      it "returns true if valid" do
        expect(Day7Pt1.run()).to eq(356958)
      end
    end
end


describe Day7Pt2 do

  context "test examples" do
    it "returns true if valid" do
      expect(Day7Pt2.run()).to eq(105461913)
    end

  end

end
