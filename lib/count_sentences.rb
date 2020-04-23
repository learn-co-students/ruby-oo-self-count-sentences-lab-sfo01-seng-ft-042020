require 'pry'

class String
  def sentence?
    if(self.include?".")
      return true
    else 
      return false
    end 
  end

  def question?
    if(self.include?"?")
      return true
    else 
      return false
    end 
  end

  def exclamation?
    if(self.include?"!")
      return true
    else 
      return false
    end 
  end

  def count_sentences
    num = 0
    num = self.split(/[\.!?]/).grep(/\S/).count
    if(num > 0)
      return num
    else 
      return 0
    end 
  end 
end