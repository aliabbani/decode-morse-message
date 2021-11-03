def decode str
    morse = {
        ".-" => "A", "..." => "B", "-.-." => "C", "-.." => "D", "." => "E", "..-." => "F", "--." => "G", "...." => "H", ".." => "I", 
        ".---" => "J", "-.-" => "K", ".-.." => "L", "--" => "M", "-." => "N", "---" => "O",  ".--." => "P", "--.-" => "Q", ".-." => "R",
        "..." => "S", "-" => "T", "..-" => "U", "...-" => "V", ".--" => "W", "-..-" => "X", "-.--" => "Y", "--.." => "Z" }
        str_ar = str.split(" ")
        result = ''
        str_ar.each do |one|
          if one === ' '
            result += ' '
          else
            result += morse[one]
          end
        end
        return result
    end
        
