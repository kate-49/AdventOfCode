require "Day4"

describe Day4 do

    context "test examples" do
        it "returns valid if all 8 functions present" do
            expect(Day4.run("
            ecl:gry pid:860033327 eyr:2020 hcl:#fffffd
            byr:1937 iyr:2017 cid:147 hgt:183cm
            ")).to eq("Valid")
        end
=begin
        it "returns valid if missing cid" do
            expect(Day4.run("
            hcl:#ae17e1 iyr:2013
            eyr:2024
            ecl:brn pid:760753108 byr:1931
            hgt:179cm
            ")).to eq("Valid")
        end
        it "returns invalid if missing a field" do
            expect(Day4.run("
            iyr:2013 ecl:amb cid:350 eyr:2023 pid:028048884 
            hcl:#cfa07d byr:1929
            ")).to eq("Invalid")
        end
        it "returns invalid if missing a field other than cid" do
            expect(Day4.run("
            hcl:#cfa07d eyr:2025 pid:166559648
            iyr:2011 ecl:brn hgt:59in
            ")).to eq("Invalid")
        end
=end
    end
   
end
