def leetspeak(phrase)
  normal_letters = ['I', 'e', 'o', 't', 's']
  leet_letters = ['1', '3', '0', '7', 'z']
  letters = phrase.split('')
  new_letters = []
  first_letter = true

  letters.each do |letter|
    index = normal_letters.index(letter)
    if (letter == 's') & (first_letter)
      new_letters.push(letter)
    elsif index
      new_letters.push(leet_letters[index])
    else
      new_letters.push(letter)
    end
    first_letter = (letter == ' ')
  end

  first_letter = true
  new_letters.join
end
