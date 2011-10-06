# encoding: UTF-8

require_relative "./cicero/cicero_text.rb"

module Cicero
  
  @locale = 'LA'

  def self.locale=(locale)
    @locale = locale
  end

  def self.locale
    @locale
  end

  def self.locales
    CiceroText.locales
  end
  
  def self.full_text
    text = full
  end

  def self.word
    words
  end

  def self.words(number = 1)
    text = full
    str = ""
    number.times{ str += "#{text.split(' ')[rand(text.split(' ').size) - 1]} "}
    str.strip.gsub(/[,.;'"!?]/,'')
  end

  def self.sentence
    sentences
  end

  def self.sentences(number = 1)
    text = full
    str = ""
    number.times { str += "#{text.split('. ')[rand(text.split('. ').size) - 1].strip}. "}
    str.strip
  end

  def self.paragraph
    self.paragraphs
  end
  
  require_relative "./cicero/ext/Array.rb"
  def self.paras(n = 1 )
    (1..n).reduce("") do |s,j|
      s << (0..7).inject([]){|mem,i| i == 7 ? mem : mem << full.split(". ").cicero_rand.strip }.join(". ")
    end
  end

  def self.paragraphs(number = 1)
    text = full
    str= ""
    number.times do 
      7.times { str += "#{text.split('. ')[rand(text.split('. ').size) - 1].strip}. "}
      str.strip!
      str += "\n"
    end
    str
  end


  private
  def self.full
    CiceroText.text(@locale)
  end

end
