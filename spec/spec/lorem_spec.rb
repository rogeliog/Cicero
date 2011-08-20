require 'spec_helper'

describe Lorem do
  before do
    Lorem.locale = 'LA'
  end

  describe '#locale=' do
    it 'Sets the locale' do
      Lorem.locale = 'ES'
      Lorem.locale.should eql('ES')
    end
  end

  describe "#full_text" do
    it 'Returns the full lorem ipsum text' do
      Lorem.full_text.should eql(LoremText::FULL)
    end
  end

  describe "#sentence" do
      let(:str){Lorem.sentence}
      it 'Returns a single sentence' do
        str.split('. ').size.should eql 1
        str[0].should eql str[0].upcase
      end
  end

  describe "#sentences" do

    context 'With no parameters' do
      let(:str){Lorem.sentences}

      it 'Returns a single sentence' do
        str.split('. ').size.should eql 1
        str[0].should eql str[0].upcase
      end
    end

    context 'With parameters' do
      let(:str){Lorem.sentences(5)}

      it "Returns 'n' sentences" do
        str.split('. ').size.should eql 5
        str.split('. ').each do |s|
          s[0].should eql s[0].upcase
        end
      end
    end
  end
end
