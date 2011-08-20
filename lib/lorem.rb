require "lorem/version"
require "lorem/lorem_text"

module Lorem
  
  @locale = 'LA'

  def self.locale=(locale)
    @locale = locale
  end

  def self.locale
    @locale
  end
  
  def self.full_text
    text = full
  end

  def self.sentence
    self.sentences
  end

  def self.sentences(number = 1)
    text = full
    str = ""
    number.times { str += "#{text.split('. ')[rand(text.split('. ').size)-1].strip}. "}
    str.strip
  end

  # def self.paragraph
  #   self.paragraphs
  # end

  # def self.paragraphs(number = 1)
  #   str= ""
  #   number.times{ str += self.sentences(5)}
  #   str
  # end


  protected
  def self.full
    LoremText.text(@locale)
  end
end
