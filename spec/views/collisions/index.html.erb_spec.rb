require 'spec_helper'

describe "collisions/index" do
  before(:each) do
    assign(:collisions, [
      stub_model(Collision,
        :date_of_collision => "Date Of Collision",
        :time_of_collision => "Time Of Collision",
        :location => "MyText",
        :collision_type => "Collision Type",
        :involved_with => "Involved With",
        :vehicle_one_direction => "Vehicle One Direction",
        :vechicle_one_motion => "Vechicle One Motion",
        :vehicle_two_direction => "Vehicle Two Direction",
        :vehicle_two_motion => "Vehicle Two Motion",
        :primary_cause => "Primary Cause",
        :injuries => 1,
        :fatalities => 2
      ),
      stub_model(Collision,
        :date_of_collision => "Date Of Collision",
        :time_of_collision => "Time Of Collision",
        :location => "MyText",
        :collision_type => "Collision Type",
        :involved_with => "Involved With",
        :vehicle_one_direction => "Vehicle One Direction",
        :vechicle_one_motion => "Vechicle One Motion",
        :vehicle_two_direction => "Vehicle Two Direction",
        :vehicle_two_motion => "Vehicle Two Motion",
        :primary_cause => "Primary Cause",
        :injuries => 1,
        :fatalities => 2
      )
    ])
  end

  it "renders a list of collisions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Date Of Collision".to_s, :count => 2
    assert_select "tr>td", :text => "Time Of Collision".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Collision Type".to_s, :count => 2
    assert_select "tr>td", :text => "Involved With".to_s, :count => 2
    assert_select "tr>td", :text => "Vehicle One Direction".to_s, :count => 2
    assert_select "tr>td", :text => "Vechicle One Motion".to_s, :count => 2
    assert_select "tr>td", :text => "Vehicle Two Direction".to_s, :count => 2
    assert_select "tr>td", :text => "Vehicle Two Motion".to_s, :count => 2
    assert_select "tr>td", :text => "Primary Cause".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
