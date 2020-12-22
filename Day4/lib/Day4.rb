class Day4
   def Day4.run(input)
        array = input.split(" ")
        hash = {}
        cid = false
        
        array.each do |e|
            key_value = e.split(":")
            hash[key_value[0]] = key_value[1]
        end

        hash.each do |k,v|
            if k == 'cid'
                cid = true
            end
        end

        if array.length == 8
            return "Valid"
        elseif array.length == 7 && cid == true
            return "Valid"
        else 
            return "Invalid"
        end
     end

       
end
