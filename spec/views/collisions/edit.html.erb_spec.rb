require 'spec_helper'

describe "collisions/edit" do
  before(:each) do
    @collision = assign(:collision, stub_model(Collision,
      :date_of_collision => "MyString",
      :time_of_collision => "MyString",
      :location => "MyText",
      :collision_type => "MyString",
      :involved_with => "MyString",
      :vehicle_one_direction => "MyString",
      :vechicle_one_motion => "MyString",
      :vehicle_two_direction => "MyString",
      :vehicle_two_motion => "MyString",
      :primary_cause => "MyString",
      :injuries => 1,
      :fatalities => 1
    ))
  end

  it "renders the edit collision form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", collision_path(@collision), "post" do
      assert_select "input#collision_date_of_collision[name=?]", "collision[date_of_collision]"
      assert_select "input#collision_time_of_collision[name=?]", "collision[time_of_collision]"
      assert_select "textarea#collision_location[name=?]", "collision[location]"
      assert_select "input#collision_collision_type[name=?]", "collision[collision_type]"
      assert_select "input#collision_involved_with[name=?]", "collision[involved_with]"
      assert_select "input#collision_vehicle_one_direction[name=?]", "collision[vehicle_one_direction]"
      assert_select "input#collision_vechicle_one_motion[name=?]", "collision[vechicle_one_motion]"
      assert_select "input#collision_vehicle_two_direction[name=?]", "collision[vehicle_two_direction]"
      assert_select "input#collision_vehicle_two_motion[name=?]", "collision[vehicle_two_motion]"
      assert_select "input#collision_primary_cause[name=?]", "collision[primary_cause]"
      assert_select "input#collision_injuries[name=?]", "collision[injuries]"
      assert_select "input#collision_fatalities[name=?]", "collision[fatalities]"
    end
  end
end
