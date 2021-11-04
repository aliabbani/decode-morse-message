# frozen_string_literal: true

def decode_char(str)
  morse = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
    '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
    '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  morse[str]
end

def decode_word(str)
  str_ar = str.split(' ')
  result = ''
  str_ar.each do |n|
    result += decode_char n
  end
  result
end

def decode(str)
  str_ar = str.split('  ')
  result = []
  str_ar.each do |n|
    result.push(decode_word(n))
  end
  result.join(' ')
end

decode_char('.-')
decode_word('-- -.--')
decode('-- -.--   -. .- -- .')
decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
