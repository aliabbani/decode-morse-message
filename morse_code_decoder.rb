
def decode_char str
    morse = {
        ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D", "." => "E", "..-." => "F", "--." => "G", "...." => "H", ".." => "I", 
        ".---" => "J", "-.-" => "K", ".-.." => "L", "--" => "M", "-." => "N", "---" => "O",  ".--." => "P", "--.-" => "Q", ".-." => "R",
        "..." => "S", "-" => "T", "..-" => "U", "...-" => "V", ".--" => "W", "-..-" => "X", "-.--" => "Y", "--.." => "Z" }
    return morse[str]
end

def decode_word str
    str_ar = str.split(" ") 
    result = ""     
    str_ar.each do |n| 
        result += decode_char n
    end
    return result
end

def decode str
    temp_str = ''
    (str.length).times do |i|
        if str[i] != '.' && str[i] != '-' && str[i] != ' ' 
            temp_str += '*'
            next
        end
        if (str[i] === ' ' && str[i - 1] === ' ' && str[i + 1] === ' ')
            temp_str += '*';
        else 
            temp_str += str[i];
        end
    end
    str_ar = temp_str.split(' ')
    result = ''
    str_ar.each do |one|
        if one === '*'
            result += ' '
        else
            result += decode_char(one)
        end
    end
    return result
end
