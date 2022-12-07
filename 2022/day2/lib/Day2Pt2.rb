class Day2Pt2
  INPUT = "A Y
  B X
  C Z"

  def Day2Pt2.run()

    bigArray = INPUT.split("\n")
    bigArray.collect(&:strip!)
  
    myScore = 0
    
    bigArray.each do |x|
      myScore += Kate.lookup2(x)
    end

    return myScore

  end

end

class Kate
def Kate.lookup2(input)
  dictionary = {"A X" => 3, "A Y" => 4, "A Z" => 8, "B X" => 1, "B Y" => 5, "B Z" => 9, "C X" => 2, "C Y" => 6, "C Z" => 7}
  return dictionary.fetch(input)
end
end