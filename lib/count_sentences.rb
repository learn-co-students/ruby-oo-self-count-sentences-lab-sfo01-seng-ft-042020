require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true 
    else 
      false 
    end
  end

  def question?
    if self.end_with?("?")
      true 
    else 
      false 
    end 
  end

  def exclamation?
    if self.end_with?("!")
      true 
    else 
      false 
    end 

  end

  def count_sentences
    # binding.pry
    delimiters = ['.','!','?']
    split_sentence = self.split(Regexp.union(delimiters))
    split_sentence = split_sentence.reject{|sentence| sentence.empty?}
    split_sentence.count
  end
end