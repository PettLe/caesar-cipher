def caesar_cipher(string, shift_num)
  temp = string.split("")
  temp2 = temp.map {|letter| letter.ord - shift_num}
  temp2.map {|letter| letter.chr}
end

puts caesar_cipher("ABC abc XYZ xyz", 2)