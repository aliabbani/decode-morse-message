@morse = {
    ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D", "." => "E", "..-." => "F", "--." => "G", "...." => "H", ".." => "I", 
    ".---" => "J", "-.-" => "K", ".-.." => "L", "--" => "M", "-." => "N", "---" => "O",  ".--." => "P", "--.-" => "Q", ".-." => "R",
    "..." => "S", "-" => "T", "..-" => "U", "...-" => "V", ".--" => "W", "-..-" => "X", "-.--" => "Y", "--.." => "Z" }
def decode_char str
        return morse[str]
    end

# Create a method to decode an entire word in Morse code, takes a string parameter, and return the string representation.
# Every character in a word will be separated by a single space (e.g. decode_word("-- -.--") returns "MY").
def decode_word str
    str_ar = str.split(" ") 
    result = ""     
    str_ar.each do |n| 
        result += @morse[n]
    end
    return result
end
decode_word("-- -.--")