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
  	result = self.split(/[.!?]/)

  	result = result.delete_if do |string|
  		string.empty?
  	end

  	result.count
  end
end