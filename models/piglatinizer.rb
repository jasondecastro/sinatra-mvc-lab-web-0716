class PigLatinizer
   def to_pig_latin(words)
     @words = words.split
     edited_words = []
     word = 0
     while word < @words.length
       edited_words << piglatinize(@words[word])
       word += 1
     end
     edited_words.join(" ")
   end

  def piglatinize(word)
   pig_latin_word = []
   consonants = ""
    letter = 0
    while letter < word.length
      ltr = word[letter].downcase
      if ltr != "a" && ltr != "e" && ltr != "i" && ltr != "o" && ltr != "u"
        consonants << word[letter]
      elsif ltr == "a" || ltr == "e" || ltr == "i" || ltr == "o" || ltr == "u"
          if consonants.length > 0
        pig_latin_word << word.slice(letter ..-1) + consonants + "ay"
          else pig_latin_word << word.slice(letter ..-1) + consonants + "way"
            end
          break
          end
        letter += 1
      end
    pig_latin_word[0]
  end
end