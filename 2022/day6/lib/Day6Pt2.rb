class Day6Pt2
    INPUT = "mjqjpqmgbljsphdztnvjfqwrcgsmlb"


    def Day6Pt2.run()
      count = 0
      bigArray = INPUT.split("")
      bigArray.collect(&:strip!)

      last3Characters = []
      
      bigArray.each_with_index { |val,index|
        if last3Characters.length > 13 
          last3Characters.shift()
        end

        if index != 0 && index != 1 && index != 2 
          if last3Characters.include?(val) == false
            puts 
            if last3Characters.uniq.length == 13
              return index + 1
              break
            end
          end
        end
        last3Characters.push(val)
      }


    end

end