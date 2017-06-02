#write your code here
def translate(sent)
  vowel = /(^[aeiou])/
  consonant = /(^[^aeiou}]+u?)/
  ending = "ay"
  capital = /([B-DF-HJ-NP-TV-Z])/
  punctuation = /[[:punct:]]+\z/
  result = []

  words = sent.split(" ")
  words.each do |word|
    punc = ''
    if word =~ punctuation
      punc = punctuation.match(word).to_s
      word[punctuation] = ''
    end
    
    if word =~ vowel
      result.push(word + ending + punc)
    else
      if word =~ capital
        word.downcase!
        start = consonant.match(word).to_s
        word[consonant] = ''
        word += start + ending + punc
        word.capitalize!
        result.push(word)
      else
        start = consonant.match(word).to_s
        word[consonant] = ''
        word += start + ending + punc
        result.push(word)
      end
    end
    
  end
  result.join(" ")
end
