require 'spec_helper'

describe "weathers/index" do
  before(:each) do
    assign(:weathers, [
      stub_model(Weather,
        :weather_date => "Weather Date",
        :condition => "Condition"
      ),
      stub_model(Weather,
        :weather_date => "Weather Date",
        :condition => "Condition"
      )
    ])
  end

  it "renders a list of weathers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Weather Date".to_s, :count => 2
    assert_select "tr>td", :text => "Condition".to_s, :count => 2
  end
end
