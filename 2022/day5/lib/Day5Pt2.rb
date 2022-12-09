class Day4Pt2
  INPUT = "2-4,6-8
  2-3,4-5
  5-7,7-9
  2-8,3-7
  6-6,4-6
  2-6,4-8"

  def Day4Pt2.run()

    bigArray = INPUT.split("\n")
    bigArray.collect(&:strip!)
    validPairs = 0
        
    bigArray.each { |x|
      a, b = x.split(",")
      x = a.gsub!("-", " ")
      y = b.gsub!("-", " ")

      xArray = x.split(" ")
      yArray = y.split(" ")

      range1 = (xArray[0]..xArray[-1]).to_a
      range2 = (yArray[0]..yArray[-1]).to_a
      
      if range1.length > range2.length
        if range1.intersect?(range2)
          validPairs += 1
        end
      elsif range1.length < range2.length
        if range2.intersect?(range1)
          validPairs += 1
        end
      elsif range1.length == range2.length
        if range2.intersect?(range1)
          validPairs += 1
        end
      end
    }
    return validPairs
  end

end
