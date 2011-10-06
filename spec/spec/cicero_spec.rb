require 'spec_helper'

describe Cicero do

  before do
    Cicero.locale = 'LA'
  end

  describe '#locale=' do
    it 'Sets the locale' do
      Cicero.locale = 'ES'
      Cicero.locale.should eql('ES')
    end
  end

  describe '#locale' do
    it 'Gets the locale' do
      Cicero.locale.should eql('LA')
    end
  end

  describe "locales" do
    subject { Cicero.locales }
    it { should_not be_nil }
    it { should be_a_kind_of Array }
    it { should_not be_empty }
    it { should include 'LA' }
  end

  describe "#full_text" do
    it 'Returns the full lorem ipsum text' do
      Cicero.full_text.should eql(CiceroText::LA)
    end
  end
  
  describe "#word" do
      it "Returns a single word" do
        Cicero.word.split(' ').size.should eql(1)
      end
  end

  describe "#words" do
    it "Whe words does not contain any puntuation signs" do
      # Cicero.stub(:words).and_return(%q{word, word. the; simple' and" elegant! word?})
      Cicero.words(15).index(/[,.;'"!?]/).should be_nil
    end
    context 'With no parameters' do
      it "Returns a single word" do
        Cicero.words.split(' ').size.should eql(1)
      end
    end

    context 'With parameters' do
      it "Returns 'n' words" do
        Cicero.words(5).split(' ').size.should eql(5)
      end
    end

  end

  describe "#sentence" do
      let(:str){Cicero.sentence}
      it 'Returns a single sentence' do
        str.split('. ').size.should eql 1
        str[0].should eql str[0].upcase
      end
  end

  describe "#sentences" do

    context 'With no parameters' do
      let(:str){Cicero.sentences}

      it 'Returns a single sentence' do
        str.split('. ').size.should eql 1
        str[0].should eql str[0].upcase
      end
    end

    context 'With parameters' do
      let(:str){Cicero.sentences(5)}

      it "Returns 'n' sentences" do
        str.split('. ').size.should eql 5
        str.split('. ').each do |s|
          s[0].should eql s[0].upcase
        end
      end
    end
  end

  describe '#paragraph' do
    it 'Returns a single paragraph' do
      Cicero.paragraphs.split('. ').size.should eql 7
    end
  end

  describe '#paragraphs' do
    context 'With no parameters' do
      it 'Returns a single paragraph' do
        Cicero.paragraphs.split('. ').size.should eql 7
      end
    end

    context 'With parameters' do
      it "Returns 'n' paragraphs" do
        Cicero.paragraphs(3).split('. ').size.should eql (19)
      end
    end
  end
end
