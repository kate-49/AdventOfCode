class Day2Pt2
  INPUT = "A Y
  B X
  C Z"

  def Day2Pt2.run()

    bigArray = INPUT.split("\n")
    bigArray.collect(&:strip!)
  
    myScore = 0
    
    bigArray.each do |x|
      myScore += Kate.findOutcome(x)
    end

    return myScore

  end

end

class Kate
def Kate.findOutcome(input)
# rock - 1 paper - 2 scissors -3 
  # rock
  if input[0] == "A"
    # lose - scissors
    if input[-1] == "X"
      return 0 + 3
     # draw - rock
    elsif input[-1] == "Y"
      return 3 + 1
    elsif input[-1] == "Z"
      # win - paper
      return 6 + 2
    end
  # paper
  elsif input[0] == "B"
    # lose - rock
    if input[-1] == "X"
      return 0 + 1
     # draw - paper
    elsif input[-1] == "Y"
      return 3 + 2
    elsif input[-1] == "Z"
      # win - scissors
      return 6 + 3
    end
  # scissors
  elsif input[0] == "C"
    # lose - paper
    if input[-1] == "X"
      return 0 + 2
     # draw - scissors
    elsif input[-1] == "Y"
      return 3 + 3
    elsif input[-1] == "Z"
      # win - rock
      return 6 + 1
    end
  end
  return 0
end

def Kate.lookup(input)
  dictionary = {"X" => 1, "Y" => 2, "Z" => 3 }

  return dictionary.fetch(input)
end
end