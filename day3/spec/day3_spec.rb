require "Day3"

describe Day3 do

    context "test examples" do
        it "tests function 1" do
            expect(Day3.R1D1()).to eq(5)
        end

        it "tests function 2" do
            expect(Day3.R3D1()).to eq(24)
        end

        it "tests function 3" do
            expect(Day3.R5D1()).to eq(7)
        end

       
       it "tests function 4" do
          expect(Day3.R7D1()).to eq(5)
        end

        it "tests function 5" do
            expect(Day3.R1D2()).to eq(4)
        end
        
    end
   
end
=begin
TEST1 = "
.........#....#.###.........##.
..##.#......#......#.......##.
##....#.#.......#.....#........
#........#..........#.#...#...#
#....###...##.....#........#...
###..............##..#.....#...
.................##.#..........
.........##......#..###.....#.#
..#..#...#.#.#...#.#.#.##...#..
..............#.#.#..#..#..#...
.#.#.#....#.........#.........#
..#.#....##..#...#.....#..##..#
............#.....#.........##.
"
=end