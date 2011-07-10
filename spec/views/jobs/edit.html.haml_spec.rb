require 'spec_helper'

describe "jobs/edit.html.haml" do
  before(:each) do
    @job = assign(:job, stub_model(Job,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit job form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => jobs_path(@job), :method => "post" do
      assert_select "input#job_name", :name => "job[name]"
      assert_select "input#job_description", :name => "job[description]"
    end
  end
end
