require 'spec_helper'

describe Company do
  it "accepts valid attributes" do
    company = Company.make
    company.should be_valid
  end

  it "rejects invalid names" do
    company = Company.make :name => ""
    company.should_not be_valid
  end

  it "rejects invalid descriptions" do
    company = Company.make :description => ""
    company.should_not be_valid
  end

  it "enforces uniqueness of names" do
    pending("wip")
    company_a1 = Company.make! :name => "a"
    company_a1.should be_valid

    company_a2 = Company.make :name => "a"
    company_a2.should_not be_valid

    company_a1.destroy
    company_a2.should be_valid
  end
end
