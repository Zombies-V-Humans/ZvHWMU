require 'spec_helper'

describe "zombie_groups/show" do
  before(:each) do
    @zombie_group = assign(:zombie_group, stub_model(ZombieGroup,
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "Address",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Address/)
    rendered.should match(/Title/)
  end
end
