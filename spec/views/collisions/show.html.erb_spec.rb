require 'spec_helper'

describe "collisions/show" do
  before(:each) do
    @collision = assign(:collision, stub_model(Collision,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Date Of Collision/)
    rendered.should match(/Time Of Collision/)
    rendered.should match(/MyText/)
    rendered.should match(/Collision Type/)
    rendered.should match(/Involved With/)
    rendered.should match(/Vehicle One Direction/)
    rendered.should match(/Vechicle One Motion/)
    rendered.should match(/Vehicle Two Direction/)
    rendered.should match(/Vehicle Two Motion/)
    rendered.should match(/Primary Cause/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
