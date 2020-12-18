require "Day2"

describe Day2 do

    context "test examples" do
      it "returns true if valid" do
        expect(Day2.run("1-3 a: abcde")).to eq(true)
      end

      it "returns true if valid" do
        expect(Day2.run("9-12 w: wwwwwwwwbwwww")).to eq(true)
      end

      it "returns true if valid" do
        expect(Day2.run("8-16 m: mmmmmmmnmmmmmmmmm")).to eq(true)
      end

      it "returns false if not valid" do
        expect(Day2.run("1-3 b: cdefg")).to eq(false)
      end

      it "returns false if not valid" do
        expect(Day2.run("19-20 j: zpjxfwvkjjktpkrbpdkj")).to eq(false)
      end

      it "returns false if not valid" do
        expect(Day2.run("6-16 t: dttttttttttttttttt")).to eq(false)
      end

    end

end
