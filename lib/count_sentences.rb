require 'pry'

class String
# #sentence?
# returns true if the string that you are calling this method on ends in a period.
# returns false if the string that you are calling this method on does NOT end in a period.
  def sentence?
    self.end_with?(".")
  end

# #question?
# returns true if the string that you are calling this method on ends in a question mark.
# returns false if the string that you are calling this method on does NOT end in question mark
  def question?
    self.end_with?("?")
  end

# #exclamation?
# returns true if the string that you are calling this method on ends in an exclamation mark
# returns false if the string that you are calling this method on does NOT end in a exclamation mark.
  def exclamation?
    self.end_with?("!")
  end

# #count_sentences
# returns the number of sentences in a string
# returns zero if there are no sentences in a string
# returns the number of sentences in a complex string
  def count_sentences
    sentences = 0
    # what punctuation we're checking for
    punctuation = [".", "?", "!"]
    # iterate over every character in the string
    self.chars.each.with_index do |char, index|
      # check if the character is a punctuation, and if the _next_ character is _not_ a punctuation
      if punctuation.include?(char) && !punctuation.include?(self[index + 1])
        sentences += 1
      end
    end
    sentences
  end
end