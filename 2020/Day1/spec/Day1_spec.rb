require "Day1"

describe Day1 do
   
    context "returns 2 numbers that sum to 2020" do
      it "returns 2020" do
        answer = Day1.sum()
        expect(answer[0] + answer[1]).to eq(2020)
       end

    end
      
end
