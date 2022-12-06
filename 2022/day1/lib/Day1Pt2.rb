class Day1Pt2
    INPUT = "
    1000
    2000
    3000
    
    4000
    
    5000
    6000
    
    7000
    8000
    9000
    
    10000
    "

    def Day1Pt2.run()
      bigArray = INPUT.split("\n")
      bigArray.collect(&:strip!)
      intArray = bigArray.map(&:to_i)

      dividedArray = [];
      i = 0
      innerarraytotal = 0

      intArray.each { |c| 
        if c != 0
          innerarraytotal += c
        else
          dividedArray.push(innerarraytotal)
          innerarraytotal = 0
        end
      }
      sortedValues = (dividedArray.sort.reverse)
      return sortedValues[0..2].sum
  
      end

end
