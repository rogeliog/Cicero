# encoding: UTF-8

require_relative "./cicero/cicero_text.rb"
require_relative "./cicero/ext/Array.rb"

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

  def self.words(n = 1)
    (1..n).reduce("") do |s,_|
      s << "#{splitter(" ")} "
    end.strip.gsub(/[,.;'"!?]/,'')
  end

  def self.sentence
    sentences
  end

  def self.sentences(n = 1)
    (1..n).reduce("") do |s,_|
      s << "#{splitter(". ").strip}. "
    end
  end

  def self.paragraph
    self.paragraphs
  end
  
  def self.paragraphs(n = 1 )
    (1..n).reduce("") do |s,_|
      s << (0..7).inject([]){|mem,i| i == 7 ? mem : mem << splitter(". ")}.map{|x| x.strip }.join(". ").concat( ".\n" )
    end
  end


  private
  def self.full
    CiceroText.text(@locale)
  end


  def self.splitter( on )
    full.split( on ).cicero_rand 
  end
end
