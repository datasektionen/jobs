require 'spec_helper'

describe "jobs/show.html.haml" do
  before(:each) do
    @company = assign(:company, Company.make!)
    @job = assign(:job, Job.make!(:company => @company))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
