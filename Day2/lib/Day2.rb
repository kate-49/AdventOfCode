class Day2

    def Day2.run(string)
        array = string.split(" ")
        password = array[-1]

        nums = array[0]
        nums = nums.split(/\D/)
        min = (nums[0].to_i)
        max = (nums[-1].to_i)

        letter = array[1]
        letter = letter.gsub(/[^0-9a-z ]/i, '')

        ans = password.count(letter)
        if ans >= min && ans <= max
            return true
        else
            return false
        end
    end

end