$alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
$morse = [
    '.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....',
    '..', '.---', '-.-', '.-..', '--', '-.', '---', '.--.',
    '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-',
    '-.--', '--..'
  ];
$newArragy = []

def decoder(x)
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

decoder(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")


