require 'pry'

class String
  
  def sentence?
    self.end_with?(".") 
  end

  def question?
    self.end_with?("?") 
  end

  def exclamation?
    self.end_with?("!") 
  end

  def count_sentences
      if question?
        self.split.count
      else
        self.split(%r{,\s*}).count
      end
  end

end
