require 'spec_helper'

describe Company do
  it "accepts valid names" do
    company = create_company({})
    company.should be_valid
  end

  it "rejects invalid names" do
    company = create_company(:name => "")
    company.should_not be_valid
  end

  it "enforces uniqueness of names" do
    company_a1 = create_company(:name => "a")
    company_a1.should be_valid

    company_a2 = create_company(:name => "a")
    company_a2.should_not be_valid

    company_a1.destroy

    company_a2 = create_company(:name => "a")
    company_a2.should be_valid
  end

  it "accepts valid descriptions" do
    company = create_company({})
    company.should be_valid
  end

  it "rejects invalid descriptions" do
    company = create_company(:description => "")
    company.should_not be_valid
  end

  private

  def create_company(options)
    Company.create({:name => "Acme Inc.", :description => "Maker of all things"}.merge(options))
  end
end
