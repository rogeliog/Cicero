require 'spec_helper'

describe LoremText do
  describe "#text" do
    context 'With locale parameter' do
      it 'Returns the desired verision' do
        LoremText.text('ES').should eql(LoremText::ES)
      end
    end
    context 'Without locale parameter' do
      it 'Returns the latin verision' do
        LoremText.text.should eql(LoremText::FULL)
      end
    end
  end

end
