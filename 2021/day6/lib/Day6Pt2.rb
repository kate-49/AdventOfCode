class Day6Pt2
  INPUT = "4,1,1,4,1,1,1,1,1,1,1,1,3,4,1,1,1,3,1,3,1,1,1,1,1,1,1,1,1,3,1,3,1,1,1,5,1,2,1,1,5,3,4,2,1,1,4,1,1,5,1,1,5,5,1,1,5,2,1,4,1,2,1,4,5,4,1,1,1,1,3,1,1,1,4,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,1,1,2,1,1,1,1,1,1,1,2,4,4,1,1,3,1,3,2,4,3,1,1,1,1,1,2,1,1,1,1,2,5,1,1,1,1,2,1,1,1,1,1,1,1,2,1,1,4,1,5,1,3,1,1,1,1,1,5,1,1,1,3,1,2,1,2,1,3,4,5,1,1,1,1,1,1,5,1,1,1,1,1,1,1,1,3,1,1,3,1,1,4,1,1,1,1,1,2,1,1,1,1,3,2,1,1,1,4,2,1,1,1,4,1,1,2,3,1,4,1,5,1,1,1,2,1,5,3,3,3,1,5,3,1,1,1,1,1,1,1,1,4,5,3,1,1,5,1,1,1,4,1,1,5,1,2,3,4,2,1,5,2,1,2,5,1,1,1,1,4,1,2,1,1,1,2,5,1,1,5,1,1,1,3,2,4,1,3,1,1,2,1,5,1,3,4,4,2,2,1,1,1,1,5,1,5,2"

  def Day6Pt2.getEmptyHash()
    return { 0 => 0, 1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0, 6 => 0, 7 => 0, 8 => 0}
  end

  def Day6Pt2.addValues(hash, value)
    currentValue = hash[value]
    hash[value] = currentValue + 1
    return hash
  end

  def Day6Pt2.createInitialHash()
    bigArray = INPUT.split(",")
    bigArray.collect(&:strip!)
    intArray = bigArray.map(&:to_i)
    h = getEmptyHash()
    intArray.each {|x| addValues(h, x)}
    return h
  end 

  def Day6Pt2.transferHashValues(hash, lhkey, lhvalue)
    currentValue = hash[lhkey]
    hash[lhkey] = currentValue + lhvalue
    return hash
  end

  def Day6Pt2.sumTotalValue(hash)
    total = 0
    hash.each do |key, value|
      total += value
    end
    return total
  end

  def Day6Pt2.run()
    fishTotals = createInitialHash()
    count = 0
    while count < 256 do
      localFishTotals = getEmptyHash()
      additionalFishToAdd = {6 => 0, 8 => 0}
      fishTotals.each do |key, value|
        if value > 0
          if key == 0
            additionalFishToAdd[6] = value
            additionalFishToAdd[8] = value
          else 
            localFishTotals[key-1] = value
          end
        else
        end
      end
      count += 1
      fishTotals = getEmptyHash
      localFishTotals.each {|localFishTotalsKey, localFishTotalsValue| transferHashValues(fishTotals, localFishTotalsKey, localFishTotalsValue)}
      additionalFishToAdd.each {|additionalFishToAddKey, additionalFishToAddValue| transferHashValues(fishTotals, additionalFishToAddKey, additionalFishToAddValue)}
    end
    total = sumTotalValue(fishTotals)
    return total
  end

end
