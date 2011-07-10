require 'spec_helper'

describe Job do
  before do
    @company = Company.new(:name => "Acme Inc.", :description => "Maker of all things")
  end

  it "accepts valid names" do
    job = create_job({})
    job.should be_valid
  end

  it "rejects invalid names" do
    job = create_job(:name => "")
    job.should_not be_valid
  end

  it "accepts valid descriptions" do
    job = create_job({})
    job.should be_valid
  end

  it "rejects invalid descriptions" do
    job = create_job(:description => "")
    job.should_not be_valid
  end

  private

  def create_job(options)
    Job.create({:name => "Rails Programmer", :description => "Code on Jobs", :company => @company}.merge(options))
  end
end
