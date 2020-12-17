require "Day1b"

describe Day1b do
   
    context "returns 2 numbers that sum to 2020" do
      it "returns 2020" do
        answer = Day1b.sum()
        expect(answer[0] + answer[1] + answer[2]).to eq(2020)
       end

    end
      
end
