require 'spec_helper'

describe CiceroText do
  describe "#text" do
    context 'With locale parameter' do
      it 'Returns the desired verision' do
        CiceroText.text('ES').should eql(CiceroText::ES)
      end
    end
    context 'Without locale parameter' do
      it 'Returns the latin verision' do
        CiceroText.text.should eql(CiceroText::LA)
      end
    end
  end

end
