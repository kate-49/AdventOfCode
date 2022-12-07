class Day2Pt1
    INPUT = "A Y
    B X
    C Z"

    def Day2Pt1.run()

      bigArray = INPUT.split("\n")
      bigArray.collect(&:strip!)
    
      myScore = 0
      bigArray.each do |x|
        myScore += Kate.lookup(x[-1])
      end
      
      bigArray.each do |x|
        myScore += Kate.checkWinner(x)
      end

      return myScore

    end

end

class Kate
  def Kate.checkWinner(input)

    # rock
    if input[0] == "A"
      # rock
      if input[-1] == "X"
        return 3
       # paper
      elsif input[-1] == "Y"
        return 6
      elsif input[-1] == "Z"
        # scissors
      else puts("error1")
      end
    # paper
    elsif input[0] == "B"
      # rock
      if input[-1] == "X"
        return 0
       # paper
      elsif input[-1] == "Y"
        return 3
      elsif input[-1] == "Z"
        # scissors
        return 6
      else puts("error2")
      end
    # scissors
    elsif input[0] == "C"
      # rock
      if input[-1] == "X"
        return 6
       # paper
      elsif input[-1] == "Y"
        return 0
      elsif input[-1] == "Z"
        # scissors
        return 3
      else puts("error3")
      end
    end
    puts("error4")
  end

  def Kate.lookup(input)
    dictionary = {"X" => 1, "Y" => 2, "Z" => 3 }
    return dictionary.fetch(input)
  end
end