#CAESAR CIPHER by Boban Jankovic


def caesar_cipher(message, spot)
    alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    message.downcase!
    poruka=message.split("")
    nova_poruka=[]
    poruka.each do |x|
        a=alphabet.find_index(x).+(spot)
        if a > 25
            nova_poruka << alphabet[a-25]
        else
            nova_poruka << alphabet[a]
        end
    end
   puts nova_poruka.join(" ").upcase!
    

end
caesar_cipher("BOBAN", 20)