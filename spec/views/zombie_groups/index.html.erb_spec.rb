require 'spec_helper'

describe "zombie_groups/index" do
  before(:each) do
    assign(:zombie_groups, [
      stub_model(ZombieGroup,
        :latitude => 1.5,
        :longitude => 1.5,
        :address => "Address",
        :title => "Title"
      ),
      stub_model(ZombieGroup,
        :latitude => 1.5,
        :longitude => 1.5,
        :address => "Address",
        :title => "Title"
      )
    ])
  end

  it "renders a list of zombie_groups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
