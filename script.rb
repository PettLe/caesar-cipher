def caesar_cipher(string, shift_num)
  temp = string.split("")
  final = temp.map do |letter|
    if letter.match?(/[[:alpha:]]/)
      (letter.ord - shift_num).chr
    else
      letter
    end  
  end
  final.join("")
end

puts caesar_cipher("ABC! abc XYZ xyz?", 2)

# a on 97, z on 122 | A on 65, Z on 90