require 'spec_helper'

describe ApplicationHelper, "#logo_alt" do
  before do
      @organisation = Factory(:organization)
  end

  it "should return default alt" do
    helper.logo_alt.should == "Teambox"
  end

  it "should return user defined alt" do
     @organisation.update_attribute(:logo_alt, "CiscoBox")
     helper.logo_alt.should == "Teambox"
  end

end