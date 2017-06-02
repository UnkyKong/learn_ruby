#write your code here
def echo(x)
  x
end

def shout(x)
  x.upcase
end

def repeat(x, y = 2)
  str = x
  (y - 1).times do
    str += ' ' + x
  end
  str
end

def start_of_word(x, y = 1)
  x[0..y-1]
end

def first_word(x, y = 1)
  x = x.split(" ")
  x[0]
end

def titleize(str)
    str.capitalize!  # capitalize the first word in case it is part of the no words array
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    phrase = str.split(" ").map do |word|
        if words_no_cap.include?(word)
            word
        else
            word.capitalize
        end
    end.join(" ")
end
