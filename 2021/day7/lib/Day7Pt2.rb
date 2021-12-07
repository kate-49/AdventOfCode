class Day7Pt2
  INPUT = "16,1,2,0,4,2,7,1,2,14"

  def Day7Pt2.prepareInput()
    bigArray = INPUT.split(",")
    bigArray.collect(&:strip!)
    intArray = bigArray.map(&:to_i)
    return intArray
  end

  def Day7Pt2.getMidpointOptions(intArray)
    sorted = intArray.sort
    if sorted.min == 0 
      count = 1
    else 
      count = sorted.min
    end
  
    optionsArray = []
    while count <= sorted.max do 
      optionsArray << count 
      count += 1    
    end
    return optionsArray
  end

  def Day7Pt2.calculateFuel(midpoint, intArray)
    fuel = 0

    intArray.each { |x| 
      if x > midpoint
        difference = x - midpoint
      else
        difference = midpoint - x
      end
      answer = (1..difference).inject(:+) || 0
      fuel += answer
    }
    return fuel
  end

  def Day7Pt2.run()
    intArray = prepareInput()
    midpointOptions = getMidpointOptions(intArray)
    result = Hash.new

    midpointOptions.each {|midpointOption|
      result[midpointOption] = calculateFuel(midpointOption, intArray)
    }
    puts result
    return result.sort_by { |key, value| value }.first
  end

end