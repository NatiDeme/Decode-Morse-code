$alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
$morse = [
    '.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....',
    '..', '.---', '-.-', '.-..', '--', '-.', '---', '.--.',
    '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-',
    '-.--', '--..'
  ];
$newArragy = []

def decode(x)
    code = x.split('')
    x.split('   ').each { |c| 
        c.split(' ').each { |m|
            $morse.each.with_index{ |l, k|
                if m == l
                    $newArragy.push($alphabet[k])
                end
            }
        }
        $newArragy.push(" ")
    }
    puts $newArragy.join('')
end

# decoder(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")

def decode_char(x)
    $morse.each.with_index{ |l, k|
        if x == l
            puts $alphabet[k]
        end
    }
end
decode_char(".-"
)

def decode_word(x)
    x.split(' ').each { |m|
        $morse.each.with_index{ |l, k|
            if m == l
                $newArragy.push($alphabet[k])
            end
        }
    }
    puts  puts $newArragy.join('')
end


