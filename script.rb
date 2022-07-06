

def caesar_cipher(string, shift) 
  array_of_character_codes = string.bytes

  result = array_of_character_codes.map do |char|
    #Makes it work for negative numbers
    negative_number = false
    if shift < 0 
      negative_number = true
    end
    if !(char.between?(65,90) || char.between?(97,122)) #skips non-alphabetic words.
      next char
    end

    shift.abs.times do #shifts the right number of times.
      #shifts by one per iteration
      char += 1 if negative_number == false
      char -= 1 if negative_number == true

      #checks for overflows from alphabet and converts to other side of alphabet
      if char == 123 || char == 90 
        char -= 26
      end
      if char == 64 || char == 96 
        char += 26
      end
    end
    char
  end
  return result.pack('c*')
end 


p caesar_cipher("What a string!", -5)
