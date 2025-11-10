# frozen_string_literal: true

def caesar_cipher(string, shift_num)
  temp = string.split("")
  final = temp.map do |letter|
    if letter.match?(/[[:alpha:]]/)
      if (letter.ord + shift_num).between?(97, 122) || (letter.ord + shift_num).between?(65, 90)
        (letter.ord + shift_num).chr
      elsif (letter.ord - shift_num) < 97
        (97 + ((letter.ord + shift_num) - 122) - 1).chr
      else
        (65 + ((letter.ord + shift_num) - 90) - 1).chr
      end
    else
      letter
    end
  end
  final.join
end

puts caesar_cipher("Todellisuus voi olla outoa, uskotko?", 8)
