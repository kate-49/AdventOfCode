class Day6Pt1
    INPUT = "bvwbjplbgvbhsrlpgdmjqwftvncz"


    def Day6Pt1.run()
      count = 0
      bigArray = INPUT.split("")
      bigArray.collect(&:strip!)

      last3Characters = []
      
      bigArray.each_with_index { |val,index|
        if last3Characters.length > 3 
          last3Characters.shift()
        end
        if index != 0 && index != 1 && index != 2 
          if last3Characters.include?(val) == false
            if last3Characters.uniq.length == 3
              return index + 1
              break
            end
          end
        end
        last3Characters.push(val)
      }
    end
end
