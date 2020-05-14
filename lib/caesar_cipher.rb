class CaesarCipher
  def encrypt(string, shift_factor)
  # Converts string to array of ascii numbers and applies shift factor
  coded_array = string.codepoints.map{ |e| e + total_shift(e, shift_factor) }
  # Converts array of shifted nums into a string
  encrypted_str = coded_array.map{ |e| e.chr}.join("")    
  encrypted_str
  end

  def total_shift(char_code, shift_factor)
    # a = 97, z = 122, A = 65, Z = 90

    if char_code.between?(97, 122) # lowercase a - z
      init_shift = char_code - 97
      total_shift = (init_shift + shift_factor + 26 ) % 26
    elsif char_code.between?(65, 90) # uppercase A - Z
      init_shift = char_code - 65
      total_shift = (init_shift + shift_factor + 26 ) % 26
    end
    total_shift - init_shift
  end
end

caesar = CaesarCipher.new
caesar.encrypt("azAZ",0) # => "azAZ"
caesar.encrypt("azAZ",-1) # => "zyZY"

# >> "azAZ"
# >> "zyZY"
