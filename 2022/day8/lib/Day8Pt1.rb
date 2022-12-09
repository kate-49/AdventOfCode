class Day8Pt1
    INPUT = 
    "30373
    25512
    65332
    33549
    35390"


  def Day8Pt1.run()
    count = 0
    bigArray = INPUT.split("\n")
    bigArray.collect(&:strip!)
    intArray = bigArray.map(&:to_i)

    totalTreesPerRow = 0;
    treesSeen = [];
    lengthOfEachRow = 0;
    
    # per row
    intArray.each_with_index { |x, xindex| 
      biggestNumberToLeft = 0
      biggestNumberToRight = 0
      x = x.to_s.split('').map(&:to_i)
      lengthOfEachRow = x.length

      # go left to right
      x.each_with_index { |x2, x2index| 

        if x2 > biggestNumberToLeft
          treesSeen.push([xindex, x2index])
          biggestNumberToLeft = x2
        end
      }
      # go right to left
      x3index = 0
      x.reverse_each {|x2| 
        if x2 > biggestNumberToRight
          treesSeen.push([xindex, x3index])
          biggestNumberToRight = x2
        end
        # check if can be seen by any direction, if so add one
        # only count once if seen in any direction
        x3index += 1
      }
    }

    # per column

    # top to bottom
    lengthOfEachRow.times { |i|
      biggestNumberSeenAbove = 0

      intArray.each_with_index { |y, yindex| 
        y = y.to_s.split('').map(&:to_i)
        if y[i] > biggestNumberSeenAbove
          treesSeen.push([i, yindex])
          biggestNumberSeenAbove = y[i]
        end
        }
      }

      lengthOfTotalArray = intArray.length
      yindex = lengthOfTotalArray

      # bottom to top
      lengthOfEachRow.times { |i|
      biggestNumberSeenBelow = 0
  
      intArray.each{ |y| 
        y = y.to_s.split('').map(&:to_i)
        if y[i] > biggestNumberSeenBelow
          treesSeen.push([i, yindex])
          biggestNumberSeenBelow = y[i]
        end
        yindex -= 1
        }
      }

      return treesSeen.uniq.length
    
    # print treesSeen
    return totalTreesPerRow

  end

end
