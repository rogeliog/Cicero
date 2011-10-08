# encoding: UTF-8
require_relative '../spec_helper.rb'

describe CiceroText do

  describe "locales" do
    subject { CiceroText.locales }
    it { should_not be_nil }
    it { should be_a_kind_of Array }
    it { should_not be_empty }
    it { should include 'LA' }
  end

  describe "ipsums" do
    subject { CiceroText.ipsums }
    it { should_not be_nil }
    it { should be_a_kind_of Hash }
    it { should_not be_empty }
    context "When given a locale" do
      context "That is in the hash" do
        subject { CiceroText.ipsums['EN'] }
        it { should eql CiceroText::EN }
      end
      context "That is not in the hash" do
        subject { CiceroText.ipsums['AA'] }
        it { should eql CiceroText::LA }
      end
    end
  end

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
