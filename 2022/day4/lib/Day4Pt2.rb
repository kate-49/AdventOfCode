class Day4Pt2
  INPUT = "vJrwpWtwJgWrhcsFMMfFFhFp
  jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
  PmmdzqPrVvPwwTWBwg
  wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
  ttgJtRGJQctTZtZT
  CrZsJsPPZsGzwwsLwLmpwMDw"

  def Day4Pt2.run()

    bigArray = INPUT.split("\n")
    bigArray.collect(&:strip!)

    compartments = [];
    commonLetter = [];
    subArray = [];

    bigArray.each_with_index {|val, index| 
      subArray.push(val)
      puts "subarray"
      puts subArray
      if subArray.length == 3
        compartments.append(subArray)
        subArray = []
      end
    }
      
    puts "compartments"
    puts compartments
    
    compartments.each do |x, y, z|
      commonLetter.push(Kate.checkForCommonLetters(x, y, z))
    end

    score = Kate.calculateFinalScore(commonLetter)
    return score
  end

end

class Kate
def Kate.divideIntoCompartments(input)
  stringLength = (input.length)/2
  return [input[0..stringLength-1], input[stringLength..-1]]
end

def Kate.checkForCommonLetters(x, y, z)
  xArray = x.split("")
  yArray = y.split("")
  zArray = z.split("")

  xArray.each do |letter|
    yArray.each do |letter2|
      if letter == letter2
        zArray.each do |letter3|
          if letter == letter3
            return letter
          end
        end
      end
    end
  end  
end

def Kate.calculateFinalScore(input)
  score = 0
  input.each do |letter|
    dictionary = {"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8, "i" => 9, "j" => 10, "k" => 11, "l" => 12, "m" => 13, "n" => 14, "o" => 15, "p" => 16, "q" => 17, "r" => 18, "s" => 19, "t" => 20, "u" => 21, "v" => 22, "w" => 23, "x" => 24, "y" => 25, "z" => 26 }
    letter == letter.upcase ? score += dictionary.fetch(letter.downcase) + 26 : score += dictionary.fetch(letter.downcase)
  end
  return score
end
end