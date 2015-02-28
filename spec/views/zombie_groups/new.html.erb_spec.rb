require 'spec_helper'

describe "zombie_groups/new" do
  before(:each) do
    assign(:zombie_group, stub_model(ZombieGroup,
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new zombie_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", zombie_groups_path, "post" do
      assert_select "input#zombie_group_latitude[name=?]", "zombie_group[latitude]"
      assert_select "input#zombie_group_longitude[name=?]", "zombie_group[longitude]"
      assert_select "input#zombie_group_address[name=?]", "zombie_group[address]"
      assert_select "input#zombie_group_title[name=?]", "zombie_group[title]"
    end
  end
end
