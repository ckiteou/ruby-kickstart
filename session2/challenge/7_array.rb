# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

def alternate_words(sentence)
  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char|
    sentence = sentence.gsub(char, ' ')
  end
  words = sentence.split
  solution = []
  words.each_with_index do |word, index|
    solution << word if index.even?
  end
  solution
end

=begin
def every_other_word(string)
  to_return = []
  p array = string.gsub(/\s+/m, ' ').strip.split(" ")
  p array.each_with_index { |val, index|
    if index.odd?
      to_return << val
    end
    }
  to_return
end
=end
#sentence = "Hello world I am great!"
#p every_other_word(sentence)
