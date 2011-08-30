require 'spec_helper'

describe Job do
  it "accepts valid attributes" do
    job = Job.make
    job.should be_valid
  end

  it "rejects invalid names" do
    job = Job.make :name => ""
    job.should_not be_valid
  end

  it "rejects invalid descriptions" do
    job = Job.make :description => ""
    job.should_not be_valid
  end
end
