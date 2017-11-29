require 'pry'

class String

  def sentence?
    self.end_with?('.') ? true : false
  end

  def question?
    self.end_with?('?') ? true : false
  end

  def exclamation?
    self.end_with?('!') ? true : false
  end

  def count_sentences
    # if self.include?('"')
      self.tr('"','')

    # elsif self.include?("'")
      self.tr("'",'')
    # end

    count = []
    self.each do |item|  
      if self.sentence? || self.question? || self.exclamation?
        count << self.split('.')
        count << self.split('!')
        count << self.split('?')
        # binding.pry
        return count.size
      else
        return 0
      end
    end
  end

end
