def translate (phrase)
  vowels = ['a', 'e', 'i', 'o', 'u']
  punctuation = ['.', '?', '!', ',', ':', ';']
  translation = []

  phrase.split(" ").each do |word|
    while not vowels.include? word[0].downcase
      if word[0..1].downcase == 'qu'
        word = word[2..-1] + word[0..1]
      else
        word = word[1..-1] + word[0]
      end
    end
    word = word + 'ay'

    word.split("").each do |letter|
      if punctuation.include? letter
        word = word.delete(letter)
        word << letter
      end
    end

    if word == word.downcase
      translation.push word
    else
      translation.push word.capitalize
    end
  end
  translation.join(" ")
end