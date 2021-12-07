class Day7Pt2
  INPUT = "16,1,2,0,4,2,7,1,2,14"

  def Day7Pt2.prepareInput()
    bigArray = INPUT.split(",")
    bigArray.collect(&:strip!)
    intArray = bigArray.map(&:to_i)
    return intArray
  end

  def Day7Pt2.getMidpoint(intArray)
    sorted = intArray.sort
    midpoint = intArray.length / 2
    if intArray.length.even?
      midpoint = sorted[midpoint-1, 2].sum / 2.0
    else
      midpoint = sorted[midpoint]
    end
    return midpoint
  end

  def Day7Pt2.calculateFuel(midpoint, intArray)
    fuel = 0

    intArray.each { |x| 
      if x > midpoint
        fuel += x - midpoint
      else
        fuel += midpoint - x
      end
    }
    return fuel
  end

  def Day7Pt2.run()
    intArray = prepareInput()
    puts intArray
    midpoint = getMidpoint(intArray)
    fuel = calculateFuel(midpoint, intArray)
    return fuel
  end

end