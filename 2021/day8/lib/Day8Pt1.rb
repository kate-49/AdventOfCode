class Day8Pt1
    TESTDATA = "7,4,9,5,11,17,23,2,0,14,21,24,10,16,13,6,15,25,12,22,18,20,8,19,3,26,1"

    INPUT = "
    22 13 17 11  0
     8  2 23  4 24
    21  9 14 16  7
     6 10  3 18  5
     1 12 20 15 19
    
     3 15  0  2 22
     9 18 13 17  5
    19  8  7 25 23
    20 11 10 24  4
    14 21 16 12  6
    
    14 21 17 24  4
    10 16 15  9 19
    18  8 23 26 20
    22 11 13  6  5
     2  0 12  3  7"


    def Day8Pt1.run()
      count = 0
      bigArray = INPUT.split()
      card1 = bigArray.slice(0..24).map!(&:to_i)
      card2 = bigArray.slice(25..49).map!(&:to_i)
      card3 = bigArray.slice(50..74).map!(&:to_i)
      bingoInput = TESTDATA.split().map!(&:to_i)

      matchingCount = 0
      card1.each {|x|
        bingoInput.each {|y|
        if x == y 
          matchingCount += 1
        end
        if matchingCount >= 5
          p "win"
        end
      }
    }


      p "1"
      p card1
      p "2"
      p card2
      p "3"
      p card3

      return "test"
    end

end
