require "Day2"

describe Run do
   
    context "returns 2 numbers that sum to 2020" do
      it "returns 2020" do
        answer = Run.sum()
        expect(answer[0] + answer[1] + answer[2]).to eq(2020)
       end

    end
      
end
