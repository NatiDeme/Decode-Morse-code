# $alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
# $morse = [
#     '.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....',
#     '..', '.---', '-.-', '.-..', '--', '-.', '---', '.--.',
#     '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-',
#     '-.--', '--..'
#   ];
# $newArragy = []

# def decode(x)
#     code = x.split('')
#     x.split('   ').each { |c|
#         c.split(' ').each { |m|
#             $morse.each.with_index{ |l, k|
#                 if m == l
#                     $newArragy.push($alphabet[k])
#                 end
#             }
#         }
#         $newArragy.push(" ")
#     }
#     puts $newArragy.join('')
# end

# # decoder(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")

# def decode_char(x)
#     $morse.each.with_index{ |l, k|
#         if x == l
#             puts $alphabet[k]
#         end
#     }
# end
# decode_char(".-"
# )

# def decode_word(x)
#     x.split(' ').each { |m|
#         $morse.each.with_index{ |l, k|
#             if m == l
#                 $newArragy.push($alphabet[k])
#             end
#         }
#     }
#     puts  puts $newArragy.join('')
# end
MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '-----' => '0',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '.-.-.-' => '.',
  '--..--' => ',',
  '..--..' => '?',
  '---...' => ':',
  '-.-.-.' => ';',
  '-...-' => '-',
  '..--.-' => '_',
  '.-..-.' => '\'',
  '.--.-.' => '@',
  '.-.-.' => '"',
  '..--.' => '=',
  '-.--.-' => '-',
  '.-...' => '&',
  '---.' => '+'
}
def decode_char(morse_code)
  return MORSE_CODE[morse_code]
end

def decode_word(morse_code)
  morse_code.split(' ').map { |char| decode_char(char) }.join('')
end

def decode(morse_code)
  morse_code.split('  ').map { |word| decode_word(word) }.join(' ')
end
puts decode('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
